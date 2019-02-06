# Base de OpenJDK
FROM openjdk:8-jre-slim

# Argumentos de la Compilacion
ARG JMETER_VERSION=3.3
ARG GIT=http://joab.gonzalez:Tsoft2018@hit.tsoftlatam.com:57990/scm/hit/cyberdaymayo2019.git

# Dependencias
RUN apt-get -y update \
    && apt-get install -y --no-install-recommends telnet iputils-ping unzip git \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /performance

# Espacio de trabajo
WORKDIR /performance

# Jmeter
COPY apache-jmeter-${JMETER_VERSION}.zip ./

# Ejecutar
RUN unzip apache-jmeter-${JMETER_VERSION}.zip \
    && mv apache-jmeter-${JMETER_VERSION} apache-jmeter \
    && git clone ${GIT} git-tmp/jmeter \
    && cp -vrf git-tmp/jmeter/bin/*.jmx apache-jmeter/bin/. \
    && cp -vrf git-tmp/jmeter/bin/*.csv apache-jmeter/bin/. \
    && cp -vrf git-tmp/jmeter/lib/* apache-jmeter/lib/. \
    && rm -vrf *.zip apache-jmeter/*.DS_Store git-tmp/jmeter

# Variable de Entorno
ENV JMETER_HOME /performance/apache-jmeter
ENV PATH ${JMETER_HOME}/bin:${PATH}

# Direcotio de Trabajo
WORKDIR ${JMETER_HOME}/bin

# Metadatos
LABEL author="joabgonzalez" jmeter="base" jmeter_version=${JMETER_VERSION}