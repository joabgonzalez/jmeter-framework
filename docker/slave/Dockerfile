# Base de Jmater Tsoft
FROM joabgonzalez/jmt-base

# Argumentos de la Compilacion
ARG GIT=http://joab.gonzalez:Tsoft2018@hit.tsoftlatam.com:57990/scm/hit/cyberdaymayo2019.git

# Metadatos
LABEL author="joabgonzalez" jmeter="slave"

# Ejecutar
RUN git clone ${GIT} git-tmp/jmeter \
    && cp -vrf git-tmp/jmeter/bin/*.csv . \
    && cp -vrf git-tmp/jmeter/lib/* ../lib/. \
    && rm -vrf git-tmp/jmeter

# Puertos
EXPOSE 1099 50000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Jmeter Esclavo
ENTRYPOINT jmeter-server -D server.rmi.localport=50000 -D server_port=1099