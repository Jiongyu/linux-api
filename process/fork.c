#include <unistd.h>
#include <stdio.h>
#include <error.h>
#include <sys/types.h>
#include <unistd.h>

/*fork 函数调用一次会返回 2 次， 等于 0 的是子进程，大于 0 的就是父进程。 */
int main(int argc, char const *argv[])
{   
    pid_t p1 = -1;
    p1 = fork();

    if(p1 == 0){
        printf("child process pid = %d.\n",getpid());
    }
    if(p1 > 0 ){
        printf("father process pid = %d.\n",getpid());
    }
    if(p1 < 0 ){
        perror("fork error");
    }

    printf("father process pid = %d.\n--------------------------\n",getpid());
    return 0;
}
