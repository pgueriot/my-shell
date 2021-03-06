FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y wget curl gnupg mysql-client vim nano python python3 python-pip python3-pip
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN apt-get update
RUN apt-get install -y mongodb
RUN pip install cqlsh 

CMD bash -c 'for ((i = 0; ; i++)); do echo "$i: $(date)"; sleep 100; done'
