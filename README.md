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