FROM ubuntu/jre:17-22.04_41

ADD build /app
WORKDIR /app

ENTRYPOINT ["/opt/java/bin/java", "-classpath /app/*:/app/lib/*", "cn.com.oniros.WxRobotApplication", "--spring.config.location=/etc/wxbot/application.properties"]
