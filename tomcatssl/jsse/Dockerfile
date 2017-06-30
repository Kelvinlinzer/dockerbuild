FROM ubuntu:16.04

MAINTAINER Qiang Li <lqecnu@gmail.com>

RUN apt-get update \
    && apt-get install -y curl openjdk-8-jdk

RUN cd /opt \
    && curl http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz \
    | tar xz

RUN cd /opt/apache-tomcat-8.5.16/conf \
    && keytool -genkeypair -noprompt  \
        -alias tomcat  \
        -keyalg RSA \
        -keysize 4096 \
        -dname "CN=qiang.li, OU=T, O=F, L=Auckland, S=Auckland, C=NZ"  \
        -keystore key.jks  \
        -storepass storechangeit \
        -keypass keychangeit \
        -validity 1000
    
COPY server.xml /opt/apache-tomcat-8.5.16/conf/server.xml

EXPOSE 8443

CMD ["/opt/apache-tomcat-8.5.16/bin/catalina.sh", "run"]
