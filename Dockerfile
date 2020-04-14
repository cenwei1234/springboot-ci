FROM 10.10.1.17:85/jdk/jdk1.8-centos:lastest
ENV TZ Asia/Shanghai
VOLUME /tmp 
# 将jar包添加到容器中并更名为app.jar
ADD springboot-ci-0.0.1.jar app.jar 
# 运行jar包
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
