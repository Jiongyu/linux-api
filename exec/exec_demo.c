#include <unistd.h>
#include <stdio.h>
#include <error.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

/* exec 函数族的作用是根据指定的文件名找到可执行文件，并用它来取代调用进程的内容，换句话说，就
是在调用进程内部执行一个可执行文件。这里的可执行文件既可以是二进制文件，也可以是任何 Linux 下
可执行的脚本文件。 */
int main(int argc, char const *argv[])
{
    pid_t ret = -1;
    pid_t pid = -1;
    int status = -1;

    pid = fork();

    if(pid == 0){
        printf("child ready.\n");
        printf("child pid = %d.\n",getpid());
        
        /*ls -l -a */
        // execl("/bin/ls","ls","-l","-a",NULL);
        // execlp("ls","ls","-l","-a",NULL);

        // char *const arg[] = {"ls","-l","-a",NULL};
        // execv("/bin/ls",arg);
        // execvp("ls",arg);

        /* execle operate user programm */
        char *const envp[] = {"name = scorpio","host=192.168.6.200",NULL};
        // execle("./exec","exec",NULL,envp);
        // execl("exec","aaaa","bbbb",NULL);

        system("ls -l -a");

        exit(0);
    }else if (pid > 0 )
    {
        sleep(1);
        printf("parent read.\n");
        printf("parent pid : %d.\n",getpid());
        printf("father read.\n");
        ret = wait(&status);
        printf("recycle process pid : %d.\n",ret);
        printf("success back: %d.\n",WIFEXITED(status));
    }else
    {
        perror("fork error");
        exit(-1);
    }
    
    return 0;
}
