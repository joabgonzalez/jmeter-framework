# Base de OpenJDK
FROM openjdk:8-jre-slim

# Argumentos de la Compilacion
ARG JMETER_VERSION=3.3

# Dependencias
RUN apt-get -y update \
    && apt-get install -y --no-install-recommends telnet iputils-ping nmap git \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /performance

# Espacio de trabajo
WORKDIR /performance

# Jmeter + Librerias
COPY apache-jmeter-${JMETER_VERSION}.tgz lib.tgz ./

# Ejecutar
RUN tar -zxvf apache-jmeter-${JMETER_VERSION}.tgz \
    && mv apache-jmeter-${JMETER_VERSION} apache-jmeter \
    && tar -zxvf lib.tgz --directory /performance/apache-jmeter \
    && rm -f apache-jmeter-${JMETER_VERSION}.tgz lib.tgz apache-jmeter/*.DS_Store

# Variable de Entorno
ENV JMETER_HOME /performance/apache-jmeter
ENV PATH ${JMETER_HOME}/bin:${PATH}

# Direcotio de Trabajo
WORKDIR ${JMETER_HOME}/bin

# Metadatos
LABEL author="joabgonzalez" jmeter="base" jmeter_version=${JMETER_VERSION}