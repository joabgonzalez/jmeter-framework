# Base de Jmater Tsoft
FROM joabgonzalez/jmt-base

# Metadatos
LABEL author="joabgonzalez" jmeter="slave"

# Puertos
EXPOSE 1099 50000

# Memoria de Java
ENV _JAVA_OPTIONS "-Xms512m -Xmx2560m"

# Jmeter Esclavo
ENTRYPOINT jmeter-server -D server.rmi.localport=50000 -D server_port=1099