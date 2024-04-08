FROM ubuntu/jre:17-22.04_41

ADD build /app
WORKDIR /app

CMD ["java -classpath /app:/app/lib --spring.config.location=/etc/wxbot/application.properties cn.com.oniros.WxRobotApplication"]
