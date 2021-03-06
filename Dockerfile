FROM ubuntu:latest

RUN apt-key update
RUN apt-get update 

RUN apt-get install -qy vim
RUN apt-get install -qy supervisor
RUN apt-get install -qy git
RUN apt-get install -qy mysql-server
RUN apt-get install -qy mysql-client

ADD ./conf /conf
ADD ./run /run

ADD ./conf/supervisor/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD ./conf/mysql/my.cnf /etc/mysql/my.cnf

EXPOSE 3306/tcp

CMD ["/bin/bash", "/run/start.sh"]
