# Base de Jmater Tsoft
FROM joabgonzalez/jmt-base

# Metadatos
LABEL author="joabgonzalez" jmeter="slave"

# Archivos
COPY slave.sh ./

# Ejecutar
RUN chmod +x slave.sh

# Puertos
EXPOSE 1099 50000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Jmeter Esclavo
ENTRYPOINT sh slave.sh $GIT