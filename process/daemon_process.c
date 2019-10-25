#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <error.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

/* 守护进程（Daemon）是①运行在后台、 ②独立于控制终端并且周期性地执行某种任务或等待处理某些发
生的事件的一种特殊进程。 ③守护进程常常在系统引导装入时启动，在系统关闭时终止。*/
void create_daemon(void);

int main(int argc, char const *argv[])
{
    create_daemon();

    while (1)
    {
        printf("running...\n");
        sleep(1);
    }
    
    return 0;
}

void create_daemon(void){

    pid_t pid = 0;
    pid = fork();

    if(pid < 0){
        perror("fork");
        exit(-1);
    }
    if(pid > 0){
        /*parent process leave. */
        exit(0);
    }

    /*child process */
    /*脱离控制终端、登录会话和进程组 */
    //setsid 将当前进程设置为一个新的会话期 session，目的就是让当前进程
    // 脱离控制台。
    pid = setsid();

    /*设置目录 */
    chdir("~/Downloads");

    /*取消文件权限 */
    umask(0);

    /*关闭文件描述符 */
    int cnt = sysconf(_SC_OPEN_MAX);
    for (size_t i = 0; i < cnt; i++)
    {
        close(i);
    }
    
    /*0,1,2 */
    open("/dev/null",O_RDWR);
    open("/dev/null",O_RDWR);
    open("/dev/null",O_RDWR);

}
