#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <error.h>


char buf[100] = {0};
pthread_mutex_t mutex;
pthread_cond_t cond;
unsigned int flag = 0;

void *func(void *arg)//子线程计数
{
    //子线程首先应该有个循环
    /*循环中阻塞在等待主线程激活的时候，子线程被激活后就去获取 buf 中的字符长度，然后打印，完成后再次阻塞*/
    sleep(1);
    while(flag==0)
    {
        //②互斥锁上锁：
        pthread_mutex_lock(&mutex);
        pthread_cond_wait(&cond,&mutex);
        printf("本次输入了%d 个字符\n",strlen(buf));
        memset(buf,0,sizeof(buf));//清除 buf
        //③互斥锁解锁：
        pthread_mutex_unlock(&mutex);
    }
    pthread_exit(NULL);//线程终止
}

int main(void)
{
    pthread_t th = -1;
    int ret = -1;
    //①初始化互斥锁
    pthread_mutex_init(&mutex,NULL);
    pthread_cond_init(&cond,NULL);
    /* 创建线程 */
    ret = pthread_create(&th, NULL, func, NULL);
    if(ret != 0)
    {
        perror("pthread_create error.\n");
        return -1;
    }
    //主线程
    printf("请输入一个字符串，以回车结束\n");
    while(1)
    {
        //②互斥锁上锁：
        pthread_mutex_lock(&mutex);
        scanf("%s",buf);
        pthread_cond_signal(&cond);
        // pthread_cond_broadcast(&cond);
        //③互斥锁解锁：
        pthread_mutex_unlock(&mutex);
        //去比较输入的是否为 end，是则退出，不是则继续
        if(strncmp(buf,"end",3)==0)
        {
            printf("程序结束\n");
            //return 0;
            flag = 1;//标志量为 1.则结束
            break;
        }
    }
    //回收子线程
    printf("等待回收子线程\n");
    ret=pthread_join(th, NULL );
    if(ret!=0)
    {
        perror("pthread_join error.\n");
        return -1;
    }
    printf("子线程回收成功\n");
    //④销毁互斥锁
    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond);
    return 0;
}