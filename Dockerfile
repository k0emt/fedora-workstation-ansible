FROM fedora:latest

RUN dnf -y update && \
    dnf -y install ansible && \
    dnf clean all

WORKDIR /ansible

COPY . /ansible