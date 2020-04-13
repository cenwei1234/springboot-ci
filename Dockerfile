FROM centos  
COPY jdk1.8.0_151 jdk1.8.0_151 
ENV JAVA_HOME=/jdk1.8.0_151
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV TZ Asia/Shanghai
ADD ${WORKSPACE}/target/springboot-ci-0.0.1.jar webapp.jar
ENTRYPOINT ["java","-jar","-Xms4000m","-Xmx4000m","-Xss256k","-Xmn200m","-XX:-OmitStackTraceInFastThrow","/webapp.jar"]
