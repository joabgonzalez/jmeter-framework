# Base de OpenJDK
FROM openjdk:8-jre-alpine

# Argumentos de la Compilacion
ARG JMETER_VERSION=3.3

# Dependencias
RUN apk add --update iputils unzip git && \
    rm -rf /var/cache/apk/* \
    && mkdir /performance

# RUN apt-get -y update \
#     && apt-get install -y --no-install-recommends telnet iputils-ping unzip git \
#     && rm -rf /var/lib/apt/lists/* \
#     && mkdir /performance

# Espacio de trabajo
WORKDIR /performance

# Jmeter
COPY apache-jmeter-${JMETER_VERSION}.zip ./

# Ejecutar
RUN unzip apache-jmeter-${JMETER_VERSION}.zip \
    && mv -vf apache-jmeter-${JMETER_VERSION} apache-jmeter \
    && rm -vrf *.zip

# Variable de Entorno
ENV JMETER_HOME /performance/apache-jmeter
ENV PATH ${JMETER_HOME}/bin:${PATH}

# Direcotio de Trabajo
WORKDIR ${JMETER_HOME}/bin

# Metadatos
LABEL author="joabgonzalez" jmeter="base" jmeter_version=${JMETER_VERSION}