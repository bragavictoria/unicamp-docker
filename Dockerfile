# Use a imagem base do OpenJDK 11
FROM openjdk:11

# Cria um diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo Java para o diretório de trabalho no contêiner
COPY OlaUnicamp.java /app

# Compila o arquivo Java usando o compilador javac
RUN javac OlaUnicamp.java

# Comando a ser executado ao iniciar o contêiner
CMD ["java", "OlaUnicamp"]
