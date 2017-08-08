FROM ubuntu:16.04

MAINTAINER Gerben Venekamp "gerben.venekamp@surfsara.nl"

RUN apt-get update -qq
RUN apt-get install -y apt-utils
RUN apt-get install -y gcc python python-pip wget libssl-dev libffi-dev
RUN pip install --upgrade pip
RUN pip install ansible
RUN pip install molecule
RUN pip install tox-travis

EXPOSE 443
