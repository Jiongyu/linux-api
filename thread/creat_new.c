#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

int main(int argc, char const *argv[])
{

    void *thread_run();

    pthread_t tid;
    if(pthread_create(  &tid,
                        NULL,
                        thread_run,
                        "thread1 run..\n") != 0){
                            printf("create thread.\n");
                        }
    sleep(5);

    pthread_cancel(tid);
    

    if(pthread_join(tid,NULL) == 0){
        printf("pthread wait success.\n");
    }else
    {
        printf("pthread wait failed.\n");
    }
    
    printf("parent thread id :[%ld].\n",pthread_self());

    return 0;
    
}

void *thread_run(){

    printf("new thread start.\n");
    pthread_setcancelstate(PTHREAD_CANCEL_ENABLE,NULL);
    pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS,NULL);
    printf("child thread id :[%ld].\n",pthread_self());

    while (1)
    {
        printf("child_thread running....\n");
        sleep(1);
    }
    

    // pthread_detach(pthread_self());
    printf("child thread leave.\n"); // not operate
    return NULL;
}
