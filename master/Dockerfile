# Base de Jmater Tsoft
FROM joabgonzalez/jmt-base

# Metadatos
LABEL author="joabgonzalez" jmeter="master"

# Archivos
COPY run master.sh ./

# Ejecutar
RUN mkdir results \
    && chmod +x run master.sh

# Puertos
EXPOSE 60000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Directorios
VOLUME ${JMETER_HOME}/bin/results

# Jmeter Maestro
ENTRYPOINT sh master.sh $GIT