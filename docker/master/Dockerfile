# Base de Jmater Tsoft
FROM tsoftglobal/jmeter:base

# Metadatos
LABEL author="joabgonzalez" tag="master"

# Copiando Archivos
COPY master.sh run.sh ./

# Puertos
EXPOSE 60000

# Directorios
VOLUME ["/performance/apache-jmeter/bin/results"]

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Jmeter Maestro
ENTRYPOINT sh master.sh $GIT