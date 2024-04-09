FROM ubuntu/jre:17-22.04_41

ADD build /app
WORKDIR /app

ENTRYPOINT ["/bin/sh", "/app/startup.sh"]
