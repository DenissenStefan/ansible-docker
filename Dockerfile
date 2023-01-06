FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Amsterdam" apt-get install -y ansible sshpass git python3-winrm

WORKDIR /etc/ansible

EXPOSE 22

CMD tail -f /dev/null