# This docker is based on ubuntu 16
# The objective is to run sen2three in this docker

FROM continuumio/anaconda

ENV PATH /opt/conda/bin:$PATH

ARG SEN2THREE_VERSION='1.1.0'
ARG SEN2THREE="sen2three-${SEN2THREE_VERSION}"

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        wget \
        curl \
        unzip && \
    wget "http://step.esa.int/thirdparties/sen2three/${SEN2THREE_VERSION}/${SEN2THREE}.tar.gz" && \
    tar -xvzf ${SEN2THREE}.tar.gz && \
    cd ${SEN2THREE} && \
    /bin/echo -e "y\ny\ny\n" | python setup.py install
