# Dockerizing haztecaso.com

Ideas for containerizing my home server.

## Ideas and todos

- Use docker volumes.
- Use docker secrets.
- Backup docker volumes: [blacklabelops/volumerize](https://hub.docker.com/r/blacklabelops/volumerize/).

## Containers

### Working 

- **nginx**
  - web server + proxy + certs management
  - *volumes*: certs + config + www
- pihole for lan
- **git**
  - git with ssh access
  - cgit
  - *volumes*: keys + repos
- **vaultwarden**
  - *volume*: vaultwarden_data

### WIP

- **mariadb_nextcloud**
- [**nextcloud**](https://github.com/nextcloud/docker/tree/master/.examples/docker-compose/with-nginx-proxy/mariadb/fpm)
