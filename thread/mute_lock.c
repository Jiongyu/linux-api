#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <error.h>


char buf[100] = {0};
pthread_mutex_t mutex;
unsigned int flag = 0;

void *func(void *arg)//子线程计数
{
    //子线程首先应该有个循环
    /*循环中阻塞在等待主线程激活的时候，子线程被激活后就去获取 buf 中的字符长度，然后打印，完成后再次阻塞*/
    sleep(1);//先睡眠 1s,让出 CPU 给主线程，保证主线程先运行
    while(flag==0)
    {
        //②互斥锁上锁：
        pthread_mutex_lock(&mutex);
        printf("本次输入了%d 个字符\n",strlen(buf));
        memset(buf,0,sizeof(buf));//清除 buf
        //③互斥锁解锁：
        pthread_mutex_unlock(&mutex);
        sleep(1);//再次睡眠一下，把上锁动作交给主线程
    }
    pthread_exit(NULL);//线程终止
}

int main(void)
{
    pthread_t th = -1;
    int ret = -1;
    //①初始化互斥锁
    pthread_mutex_init(&mutex,NULL);
    /* 创建线程 */
    ret = pthread_create(&th, NULL, func, NULL);
    if(ret !=0)
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
        sleep(1);//再次睡眠一下，把上锁动作交给子线程
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
    return 0;
}