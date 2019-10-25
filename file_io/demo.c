#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#define OPEN_TEST 0
#define MUTI_WRITE 0
#define DUP_TEST 0
#define FCNTL_TEST 1

int main(int argc, char *argv[])
{
    #if  OPEN_TEST

        char file_name[] = "./test.txt";
        int fd = -1;
        fd = open(file_name,  O_RDWR | O_CREAT);
        if(fd == -1){
            perror("open file error:\n");
            return -1;
        }else{
            printf("success open file.\n");
            printf("file describer : [%d]\n",fd);
        }

        int ret = -1;
        // 偏移10字节写入
        ret = lseek(fd, 10, SEEK_SET);
        printf("file bits: %d.\n",ret);

        char buff[100] = {0};    
        char write_buff[20] = "qwertyuuiiighd";
        ret = write(fd, write_buff, strlen(write_buff));
        if ( ret == -1 ){
            perror("write file error:\n");
            return -1;
        }else{
            printf("total write %d bits\n",ret);
            printf("write:%s\n",write_buff);
        }

        ret = lseek(fd, 10, SEEK_SET);
        ret = read(fd, buff, 10);
        if(ret == -1){
            perror("read file error:\n");
            return -1;
        }else{
            printf("read data:[%s]\n",buff);
        }

        fd = close(fd);
        if(fd == -1 ){
            perror("close file error:\n");
            return -1;
        }else{
            printf("close file success\n.");
        }

    #endif

    #if MUTI_WRITE

        int fd1 = -1, fd2 = -1;
        char writebuff1[20] = "123456 ";
        char writebuff2[20] = "987654 ";

        /* 覆盖 */
        // fd1 = open("dual_write.txt",O_RDWR | O_CREAT);
        // fd2 = open("dual_write.txt",O_RDWR | O_CREAT);

        /* 续写 */
        fd1 = open("dual_write.txt",O_RDWR | O_APPEND);
        fd2 = open("dual_write.txt",O_RDWR | O_APPEND);

        if(-1 == fd1 || -1 == fd2){
            perror("open file error:\n");
            exit(-1);
        }else
        {
            printf("open file success.\n");
        }
        


        int i = 1;
        int ret = -1;
        while(i != 10){

            ret = write(fd1,writebuff1,strlen(writebuff1));
            if(-1 == ret){
                perror("write error:\n");
                exit(-1);
            }else{
                printf("write data: [%s]\n",writebuff1);
            }
            sleep(1);
            ret = write(fd2,writebuff2,strlen(writebuff2));
            if(-1 == ret){
                perror("write error:\n");
                exit(-1);
            }else{
                printf("write data: [%s]\n",writebuff2);
            }

            i++;
        }

        close(fd1);
        close(fd2);

    #endif

    #if DUP_TEST

        /*fd = 0、 1、 2,这三个文件分别叫 stdin、stdout、 stderr */

        /*dup test */
        int fd1 = -1, fd2 = -1;
        fd1 = open("dup_test.txt", O_CREAT|O_RDWR);
        if (-1 == fd1){
            perror("open file error:\n");
            exit(-1);
        }else
        {
            close(1);  /*close stdout */;
            printf("open file success.");
        }

        /*当前最小标识符为1 */
        fd2 = dup(fd1);
        /*输出到文档 */
        printf("fd2 = %d\n",fd2);
        printf("----------------\n");


        /*dup2 test */
        fd1 = open("dup_test.txt", O_CREAT|O_RDWR);
        if (-1 == fd1){
            perror("open file error:\n");
            exit(-1);
        }
        /*若标识符为1存在，先关闭，再复制 */
        fd2 = dup2(fd1,1);
        printf("fd1 = %d\n",fd1);
        printf("fd2 = %d\n",fd2);
        printf("----------------\n");
    #endif

    #if FCNTL_TEST
    
        
    #endif


    return 0;
}
