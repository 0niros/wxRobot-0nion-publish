FROM ubuntu/jre:17-22.04_41

ADD build /app
WORKDIR /app

ENTRYPOINT ["sh", "/app/startup.sh"]
