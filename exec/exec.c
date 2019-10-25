#include <stdio.h>

int main(int argc, char const *argv[],char const *env[])
{
    printf("hello\n");
    int i = 0;
    for(i = 0; argv[i]!=NULL;i++){
        printf("argv[%d] == %s.\n",i,argv[i]);
    }


    i = 0 ;
    while (env[i] != NULL)
    {
        printf("env[%d] == %s.\n",i,env[i]);
        i++;
    }
    
    return 0;
}
