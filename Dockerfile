FROM mysql/mysql-server:8.0.24

COPY config/user.cnf /etc/mysql/my.cnf

ENV MYSQL_ROOT_PASSWORD=2K1AEpi8UFGIkI0c2KGR3Vl8kM7oUvXl2TWyzi1TY1Q
ENV MYSQL_DATABASE=mysql
ENV MYSQL_USER=mysql
ENV MYSQL_PASSWORD=CCuw5Gr3eYPDkNK6eAIFskqcRqMriKqs4U

COPY your_sql_file.sql /docker-entrypoint-initdb.d/
