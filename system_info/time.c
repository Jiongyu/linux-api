#include <time.h>
#include<sys/time.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{   
    time_t timer = -1;
    timer = time(NULL);
    printf("1. time : %ld\n", timer);
    
    printf("2. ctime : %s\n", ctime(&timer));


    struct tm timenow;
    memset(&timenow,0,sizeof(timenow));
    gmtime_r(&timer, &timenow);

    // printf("3. gtime:\n year:%d,month:%d,day:%d,hour:%d.\n",timenow.tm_year + 1900,timenow.tm_mon + 1,timenow.tm_mday,timenow.tm_hour + 8);
    printf("3. gtime: year:%d,month:%d,day:%d,hour:%d.\n",timenow.tm_year,timenow.tm_mon,timenow.tm_mday,timenow.tm_hour);

    memset(&timenow,0,sizeof(timenow));
    localtime_r(&timer, &timenow);
    printf("4. localtime: year:%d,month:%d,day:%d,hour:%d.\n",timenow.tm_year,timenow.tm_mon,timenow.tm_mday,timenow.tm_hour);

    char buf[100] ={0};
    memset(&buf,0,sizeof(buf));
    strftime(buf, sizeof(buf), "%Y--%m--%d--%H--%M--%S", &timenow);
    printf("5. strftime: %s\n",buf);

    struct timezone tz;
    struct timeval tv;
    int ret = -1;
    memset(&tz, 0, sizeof(tz));
    memset(&tv, 0, sizeof(tv));
    ret = gettimeofday(&tv,&tz);
    printf("6.gettimrofday:\n");
    printf("second: %ld\n",tv.tv_sec);
    printf("second: %ld\n",tv.tv_usec);
    printf("timezone: %d\n",tz.tz_minuteswest);
    printf("timezone: %d\n",tz.tz_dsttime);

    return 0;
}
