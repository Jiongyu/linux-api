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
    DIR *dir = NULL;
    struct dirent *ent = NULL;
    unsigned int cnt = 0;
    if (argc != 2){
        printf("usage:%s disname \n",argv[0]);
        exit(-1);
    }

    dir = opendir(argv[1]);
    if(NULL == dir){
        perror("opendir");
        exit(-1);
    }

    while (1)
    {
        ent = readdir(dir);
        if(ent != NULL){
            printf("name:[%s],",ent->d_name);
            cnt += 1;
            if(ent->d_type == DT_REG){
                printf("是普通文件\n");
            }else
            {
                printf("不是普通文件\n");
            }
        
        }else
        {
            break;
        }
        
    }
    printf("total file number: %d",cnt);
    return 0;
}
