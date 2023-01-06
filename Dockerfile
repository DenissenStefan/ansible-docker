FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Amsterdam" apt-get install -y ansible sshpass git

WORKDIR /etc/ansible

EXPOSE 22