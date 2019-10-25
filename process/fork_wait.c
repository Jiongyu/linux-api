#include <unistd.h>
#include <stdio.h>
#include <error.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
    pid_t ret = -1;
    pid_t pid = -1;
    int status = -1;

    pid = fork();

    if(pid == 0){
        printf("child read.\n");
        printf("child pid = %d.\n",getpid());
        exit(1);
    }else if(pid > 0){
        printf("father read.\n");
        ret = wait(&status);
        printf("recycle process pid : %d.\n",ret);
        printf("success back: %d.\n",WIFEXITED(status));

    }else{
        perror("fork error");
        exit(-1);
    }

    
    
    return 0;
}
