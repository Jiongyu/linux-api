#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <dirent.h>

int main(int argc, char const *argv[])
{
    // int file_number(const char *path);

    if(argc != 2){
        printf("usage:  %s  dimanme\n",argv[0]);
        exit(-1);
    }

    printf("total file number :%d.\n",file_number(argv[1]));
    return 0;
}

int file_number(const char *path){
    unsigned int cnt = 0;
    struct dirent **dent;
    unsigned int i = 0;
    i = scandir(path, &dent, NULL, NULL);
    while (*dent)
    {
        printf("[%s]\n",(*dent)->d_name);
        dent++ ;
        cnt++ ;
    }
    return cnt;
}