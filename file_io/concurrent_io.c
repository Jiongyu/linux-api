#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <error.h>
#include <stdlib.h>

int main(void)
{
    // 读取鼠标
    int fd = -1;
    char buf[200];
    int flag=-1;
    int ret=-1;
    fd = open("/dev/input/mouse0", O_RDONLY | O_NONBLOCK);
    if (fd < 0)
    {
        perror("open:");
        return -1;
    }

    //键盘
    //F_GETFL：获取描述符原有状态给 flag 的命令，目的是为了保护原有的状态
    // STDIN_FILENO：指向标准输入文件的文件描述符0
    flag = fcntl(STDIN_FILENO, F_GETFL);
    flag |= O_NONBLOCK;//将原有文件状态 | 非阻塞标志
    fcntl(STDIN_FILENO, F_SETFL, flag);//将修改后的包含了非阻塞标志的新状态重新设置回去

    while(1)
    {
        //读鼠标
        memset(buf, 0, sizeof(buf));
        //printf("before 鼠标 read.\n");
        ret=read(fd, buf, 50);
        if(ret>0) //>0，表示已经接收到数据
        {
        printf("鼠标读出的内容是： [%s].\n", buf);
        }
        // 读键盘
        memset(buf, 0, sizeof(buf));
        //printf("before 键盘 read.\n");
        ret=read(0, buf, 5);
        if(ret>0)
        {
        printf("键盘读出的内容是： [%s].\n", buf);
        } 
    }
return 0;}