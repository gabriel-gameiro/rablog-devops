FROM mysql:5.7

# Copiando deste diretorio para pasta de inicializacao do docker
COPY ./scripts/ /docker-entrypoint-initdb.d/

# Comando Criacao docker:
# iniciar doceker |   porta exposta   |           senha do root               |   criacao do database     |    criacao de user    |    senha do user           | dockerfile
# docker run -d      -p 3306:3306        -e MYSQL_ROOT_PASSWORD=senha123     -e MYSQL_DATABASE=bd_rablog -e MYSQL_USER=user_db   -e MYSQL_PASSWORD=senha123       db_rablog