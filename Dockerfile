FROM hubtest.xiamenair.com.cn/ecip-common/docker-base-os-centos-jdk8:1.0.0
ENV TZ Asia/Shanghai
ADD ${WORKSPACE}/target/springboot-ci-0.0.1-SNAPSHOT.jar webapp.jar
ENTRYPOINT ["java","-jar","-Xms4000m","-Xmx4000m","-Xss256k","-Xmn200m","-XX:-OmitStackTraceInFastThrow","/webapp.jar"]
