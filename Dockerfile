FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Amsterdam" apt-get install -y python3-pip sshpass git python3-winrm

RUN pip3 install ansible

WORKDIR /etc/ansible

EXPOSE 22

CMD tail -f /dev/null