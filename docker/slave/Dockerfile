# Base de Jmater Tsoft
FROM tsoftglobal/jmeter:base

# Metadatos
LABEL author="joabgonzalez" tag="slave"

# Copiando Archivos
COPY slave.sh ./

# Puertos
EXPOSE 1099 50000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Jmeter Esclavo
ENTRYPOINT sh slave.sh $GIT