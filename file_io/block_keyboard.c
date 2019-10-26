#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char const *argv[])
{
    char buf[100];
    memset(buf,0,sizeof(buf));
    printf("buf read.\n");

    read(0,buf,5);  /*block */

    printf("read data : [%s].\n",buf);

    return 0;
}
