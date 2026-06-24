#multistage dockerfile
#--- Stage 1: Download and extract Tomcat ---
FROM alpine:3.20 as downloader

ENV TOMCAT_VERSION=9.0.118
WORKDIR /tmp

RUN apk add --no-cache curl tar && \
    curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz

# --- Stage 2: Final image ---
FROM eclipse-temurin:21.0.8_9-jdk-jammy

ENV CATALINA_HOME=/opt/tomcat
ENV PATH=$CATALINA_HOME/bin:$PATH
VOLUME [ "/data" ]
COPY --from=downloader /tmp/apache-tomcat-* /opt/tomcat

EXPOSE 8080

CMD ["catalina.sh", "run"]
