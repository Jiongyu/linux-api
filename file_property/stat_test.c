#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>


int main(int argc, char const *argv[])
{
    /*stat  获取    文件信息 */
    int dout = -1;
    struct stat buf;

    char filename[] = "./../file1.txt";
    memset(&buf, 0, sizeof(buf));
    dout = stat(filename,&buf);
    if(dout < 0 ){
        perror("stat error");
        exit(-1);
    }

    printf("st_uid = %d.\n",buf.st_uid);
    printf("st_gid = %d.\n",buf.st_gid);
    printf("st_size = %d.\n",buf.st_size);
    printf("st_mode = %d.\n",buf.st_mode);

    return 0;
}

/*todo :  判断文件类型脚本 */