# Clone do Projeto Backend Spring Boot
git clone https://github.com/bezkoder/spring-boot-data-jpa-mysql backend

# Clone do Projeto Frontend React
git clone https://github.com/bezkoder/react-hooks-crud-web-api frontend


# BANCO DE DADOS MARIADB
# Maria DB Docker Hub
# https://hub.docker.com/_/mariadb

# Criar um volume para persistir os dados do Banco de Dados MariaDB
docker volume create --name mariadb-volume

# Em caso de erro ou excluir os dados, remover Volume do Banco de Dados
docker volume rm mariadb-volume

# Criar container usando a versão 11, com volume para preservar os dados e definindo a senha do usuário root
docker run --name mariadb --rm \
-v mariadb-volume:/var/lib/mysql \
-e MARIADB_ROOT_PASSWORD=123456 \
-e MARIADB_DATABASE=tutorial \
-p 3306:3306 -d mariadb:11


# BACKEND
# Executar o projeto com Maven
mvn spring-boot:run

# Endereço da aplicação: http://localhost:8080/api/tutorials
# Endereço do Swagger: http://localhost:8080/swagger-ui/index.html



# FRONTEND
# Instalar as dependências
yarn install
# ou
npm install

# Executar o projeto com Yarn
yarn start
# ou
npm run start

# Endereço: http://localhost:3000