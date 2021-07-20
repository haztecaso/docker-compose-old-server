FROM python:3
MAINTAINER Adrián Lattes Grassi <adrianlattes@disroot.org>
RUN apt update && apt -y upgrade && apt -y install cron\
 && pip3 install moodle-dl
COPY crontab.txt /etc/cron.d/moodle_dl
RUN chmod a+x /etc/cron.d/moodle_dl
ENTRYPOINT ["/usr/sbin/cron", "-f", "-l", "8"]
