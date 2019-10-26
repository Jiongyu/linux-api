#include <stdio.h>
#include <syslog.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char const *argv[])
{
    printf("my pid : %d.\n",getpid());

    openlog("log",LOG_PID | LOG_CONS , LOG_USER);

    syslog(LOG_INFO, "this is my log info.%d\n",23);
    syslog(LOG_INFO, "this is another log info.\n");
    syslog(LOG_INFO, "this is 3th log info.\n");

    closelog();

    return 0;
}

/* cat /var/log/syslog */

/*Oct 26 09:30:45 tan-pc log[5985]: this is my log info.23
Oct 26 09:30:45 tan-pc log[5985]: this is another log info.
Oct 26 09:30:45 tan-pc log[5985]: this is 3th log info.
Oct 26 09:30:50 tan-pc log[5993]: this is my log info.23
Oct 26 09:30:50 tan-pc log[5993]: this is another log info.
Oct 26 09:30:50 tan-pc log[5993]: this is 3th log info. */