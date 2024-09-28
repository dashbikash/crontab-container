FROM alpine:3.20

COPY cronjobs /cronjobs

RUN find /cronjobs -type f -iname "*.sh" -exec chmod +x {} \;
RUN chmod 0644 /cronjobs/crontab.txt && crontab /cronjobs/crontab.txt

CMD ["crond", "-f", "-d", "8"]