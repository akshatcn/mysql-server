FROM mysql:5.6
COPY . .
EXPOSE  3306
RUN mysql -u root -ppasssword -Bse "create database testing; set global max_connections=500; set global max_connect_errors=999999;"
