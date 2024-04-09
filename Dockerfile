FROM ubuntu:22.04

RUN apt update && apt install -y openjdk-17-jre-headless

ADD build /app
WORKDIR /app

CMD ["sh", "/app/startup.sh"]
