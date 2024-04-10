FROM ubuntu/jre:17-22.04_41

ADD build /app
RUN mkdir /app/tmp
WORKDIR /app

ENTRYPOINT ["/opt/java/bin/java", "-Djava.io.tmpdir=/app/tmp" ,"-classpath", "/app/*:/app/lib/*", "cn.com.oniros.WxRobotApplication", "--spring.config.location=/etc/wxbot/application.properties"]
