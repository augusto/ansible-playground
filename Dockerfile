FROM ubuntu:15.10
MAINTAINER Augusto Rodriguez <augusto.rodriguez@gmail.com>
LABEL NAME="augusto/ansible"
LABEL DESCRIPTION="Ansible"


RUN apt-get update -y && \
    apt-get install -y python python-dev python-pip && \
    pip install ansible 

RUN mkdir /scripts
WORKDIR /scripts


ENTRYPOINT ["/usr/local/bin/ansible"]
