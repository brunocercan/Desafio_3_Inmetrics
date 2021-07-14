FROM ubuntu:18.04
LABEL maintainer="Bruno Cercan"
ENV PORT=5000
RUN cd ~
RUN apt-get update && apt-get install -y \
python3 \
python3-pip \
mysql-server \
libmysqlclient-dev \
git
RUN git clone https://github.com/brunocercan/API-Clientes.git
RUN cd API-Clientes
RUN pip3 install --upgrade setuptools
RUN pip3 install flask
RUN pip3 install jsons
RUN pip3 install flask_mysqldb
WORKDIR /API-Clientes
ENTRYPOINT python3 main.py
EXPOSE $PORT