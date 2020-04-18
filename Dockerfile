FROM 10.10.1.17:85/jdk/jdk1.8-centos:lastest
ENV TZ Asia/Shanghai
VOLUME /tmp 
# 将jar包添加到容器中并更名为app.jar
ADD ${WORKSPACE}/target/springboot-ci-0.0.1.jar target/app.jar 
# 运行jar包
RUN bash -c 'touch target/app.jar'
ENTRYPOINT ["java","-jar","-Xms4000m","-Xmx4000m","-Xss256k","-Xmn200m","-XX:-OmitStackTraceInFastThrow","target/app.jar"]
