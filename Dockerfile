FROM sath89/oracle-xe-11g

RUN apt-get update
RUN apt install -y build-essential
RUN apt-get install -y lib32stdc++6
RUN apt-get install -y wget

RUN sudo apt-get install -y software-properties-common
RUN apt-get install -y curl
RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
RUN export DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get update
RUN sudo apt-get install -y mariadb-server

RUN wget http://www.sqlines.com/downloads/sqlines31107_linux.tar.gz
RUN wget http://www.sqlines.com/downloads/sqlinesdata31773_x86_64_linux.tar.gz
RUN tar -zvxf sqlines31107_linux.tar.gz
RUN tar -xvzf sqlinesdata31773_x86_64_linux.tar.gz
