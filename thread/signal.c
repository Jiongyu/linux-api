#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <error.h>

#include <semaphore.h>

char buf[100];
sem_t sem;
unsigned int flag = 0;

void *func(){

    while (flag == 0)
    {
        sem_wait(&sem);
        printf("input data : [%s]\n",buf);
        memset(buf,0,sizeof(buf));
        // sem_wait(&sem);
    }
    
    printf("child thread quit.\n");
    pthread_exit(NULL);
}

int main(int argc, char const *argv[])
{
    pthread_t th = -1;
    int ret = -1;

    sem_init(&sem,0,0);
    ret = pthread_create(&th,NULL,func,NULL);
    if(ret != 0){
        perror("thread create");
        return -1;
    }

    printf("input strings data stoped by enter.\n");

    while (scanf("%s",buf))
    {
        if(strncmp(buf,"end",3) == 0){
            printf("programm over.\n");
            flag = 1;
            sem_post(&sem);
            break;
        }
        sem_post(&sem);
    }

    // printf("recycle child thread.\n");
    ret = pthread_join(th,NULL);
    if(ret != 0){
        perror("recycle child thread");
        return -1;
    }

    printf("recycle child thread success.\n");
    sem_destroy(&sem);
    return 0;
}
