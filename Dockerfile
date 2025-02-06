FROM ubuntu:latest
LABEL NAME="AppGo:1.0"
#Qual porta do container estara disponivel
EXPOSE 8000
#Define o diretorio de trabalho, qualquer instrução que nao fale o diretorio, vai assumir /app 
WORKDIR /app

ENV DB_HOST=localhost DB_PORT=5432
ENV DB_USER=root DB_PASSWORD=root DB_NAME=root
#Copia o arquivo main do diretorio atual do linux para a imagem dentro do /app
COPY ./main main
ENTRYPOINT [ "./main" ]
