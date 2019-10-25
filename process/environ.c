#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* 获取环境变量值 */
int main(int argc, char const *argv[])
{
    int i = 0;
    extern char **environ;
    while (NULL != environ[i])
    {
        printf("the %d environ varible:  %s.\n",i,environ[i]);
        i++;
    }
    printf("-------------------------\n");

    const char name[] = "LC_TIME";
    char *value;
    int ret = -1;
    value = getenv(&name);
    printf("name: %s.\n",value);
    
    return 0;
}
