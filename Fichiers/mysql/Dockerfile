FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Copy the MySQL configuration file
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Copy the script to create the initial database
COPY create-db.sql /docker-entrypoint-initdb.d/create-db.sql

# Expose the default MySQL port
EXPOSE 3306

# Set the default command to start MySQL
CMD ["mysqld"]



# # Set the base image to Ubuntu 20.04
# FROM ubuntu:20.04

# # ENV DEBIAN_FRONTEND=noninteractive

# # Install required packages
# RUN apt-get update && apt-get install -y mariadb-server

# # Copy the MySQL configuration file
# COPY my.cnf /etc/mysql/conf.d/my.cnf

# # Copy the script to create the initial database
# COPY create-db.sql /docker-entrypoint-initdb.d/create-db.sql

# # Expose the default MySQL port
# EXPOSE 3306

# # Set the default command to start MySQL
# CMD ["mysqld"]







# # Set the base image to Ubuntu 20.04
# FROM ubuntu:20.04

# # ENV DEBIAN_FRONTEND=noninteractive

# # Install required packages
# RUN apt-get update && apt-get install -y mariadb-server

# # Copy the MySQL configuration file
# COPY my.cnf /etc/mysql/conf.d/my.cnf

# # Copy the script to create the initial database
# COPY create-db.sql /docker-entrypoint-initdb.d/create-db.sql

# # Expose the default MySQL port
# EXPOSE 3306

# # Set the default command to start MySQL
# CMD ["mysqld"]
