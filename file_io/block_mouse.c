#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <error.h>
#include <stdlib.h>
int main(int argc, char const *argv[])
{
    int fd = -1;
    char buf[200];

    fd = open("/dev/input/mouse0", O_RDONLY);
    if(fd < 0 ){
        perror("open");
        exit(-1);
    }

    memset(buf, 0 ,sizeof(buf));
    printf("read.\n");
    read(fd, buf, 50); /*block */
    printf("read data : [%s].\n",buf);

    return 0;
}
