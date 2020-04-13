FROM 10.10.1.17:85/jdk/jdk1.8-centos:lastest
ENV TZ Asia/Shanghai
ADD ${WORKSPACE}/target/springboot-ci-0.0.1.jar webapp.jar
ENTRYPOINT ["java","-jar","-Xms4000m","-Xmx4000m","-Xss256k","-Xmn200m","-XX:-OmitStackTraceInFastThrow","/webapp.jar"]
