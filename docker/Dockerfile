# dockerfile to install tomcat in ubuntu
FROM ubuntu:22.04

# Install required packages
RUN apt-get update && \
    apt-get install -y openjdk-21-jdk curl && \
    rm -rf /var/lib/apt/lists/*

# Set Tomcat version
ENV TOMCAT_VERSION=9.0.118
ENV TOMCAT_HOME=/opt/tomcat

# Download and extract Tomcat

RUN curl -fsSL https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz \
    | tar -xz -C /opt && \
    mv /opt/apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_HOME}

# Set environment variable (your practice variable)
ENV department=dev

# Expose Tomcat port
EXPOSE 8080

# Set working directory
WORKDIR ${TOMCAT_HOME}/bin

# Start Tomcat
CMD ["./catalina.sh", "run"]

------------

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
COPY --from=downloader /tmp/apache-tomcat-* $CATALINA_HOME

EXPOSE 8080

CMD ["catalina.sh", "run"]
