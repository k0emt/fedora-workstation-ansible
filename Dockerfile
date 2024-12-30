FROM fedora:latest

RUN dnf -y update && \
    dnf -y install ansible && \
    dnf -y install git && \
    dnf -y install openssh-clients && \
    dnf clean all

RUN useradd -ms /bin/bash user && \
    echo "user:password" | chpasswd

RUN echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER user

WORKDIR /home/user/playbook

COPY . .
