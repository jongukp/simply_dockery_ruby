docker run --name=test-mysql --env="MYSQL_ROOT_PASSWORD=mypassword" -d mysql/mysql-server:latest

docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=my-password -d mysql/mysql-server:latest
docker run -it --link mysql-container --rm -e MYSQL_HOST=mysql-container mysql/shell init



docker-compose build component-test
docker-compose up -d
http://localhost:8080/users# simply_dockery_ruby
