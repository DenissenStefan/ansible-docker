FROM ubuntu
RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Amsterdam" apt-get install -y python3-pip git python3-winrm jq curl sshpass
RUN pip3 install ansible --break-system-packages
RUN pip3 install ansible-lint --break-system-packages
RUN pip3 install passlib --break-system-packages
RUN pip3 install hvac --break-system-packages
RUN pip3 install lxml --break-system-packages
RUN pip3 install xmltodict --break-system-packages
RUN pip3 install jmespath --break-system-packages
RUN pip3 install jmespath --break-system-packages
RUN ansible-galaxy collection install community.hashi_vault
WORKDIR /etc/ansible
EXPOSE 22
 CMD tail -f /dev/null