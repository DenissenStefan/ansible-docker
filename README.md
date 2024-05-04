# Readme

This is a docker container to run ansible from.

# Usage

## docker-compose

```
---
version: "2.1"
services:
  ansible:
    image: denissenstefan/ansible:v1
    container_name: ansible
    volumes:
      - /path/to/ansible/dir:/etc/ansible
    ports:
      - 22:22
    restart: unless-stopped
```

## docker cli

```
docker run -d \
  --name=ansible \
  -p 22:22 \
  -v /path/to/ansible/dir:/etc/ansible \
  --restart unless-stopped \
  denissenstefan/ansible:v1
```

# Use as a gitlab runner:

When using this container as a gitlab runner, you need to add `chmod -v 700 $(pwd)` as a command to the runner, otherwise the runner will fail to run the playbook. This is because Ansible refuses to run playbooks in world-writable directories.