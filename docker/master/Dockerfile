# Base de Jmater Tsoft
FROM joabgonzalez/jmt-base

# Argumentos de la Compilacion
ARG GIT=http://joab.gonzalez:Tsoft2018@hit.tsoftlatam.com:57990/scm/hit/cyberdaymayo2019.git

# Metadatos
LABEL author="joabgonzalez" jmeter="master"

# Archivos
COPY run.sh ./

# Ejecutar
RUN mkdir results \
    && chmod +x run.sh \
    && git clone ${GIT} git-tmp/jmeter \
    && cp -vrf git-tmp/jmeter/bin/*.jmx . \
    && cp -vrf git-tmp/jmeter/lib/* ../lib/. \
    && rm -vrf git-tmp/jmeter

# Puertos
EXPOSE 60000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Directorios
VOLUME ["/performance/apache-jmeter/bin/results"]

# Jmeter Maestro
ENTRYPOINT /bin/sh