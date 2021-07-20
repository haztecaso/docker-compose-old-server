# Dockerizing haztecaso.com

Ideas for containerizing my home server.

## Install
```
git clone https://github.com/haztecaso/haztecaso.com
git submodule init
git submodule update
```

## Ideas and todos

- Use docker volumes.
- Use docker secrets.
- Backup docker volumes: [blacklabelops/volumerize](https://hub.docker.com/r/blacklabelops/volumerize/).
- Letsencrypt auto renew + proxy: https://hub.docker.com/r/jrcs/letsencrypt-nginx-proxy-companion

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

- **git**
- **moodle_dl**: submodule
- [**nextcloud**](https://github.com/nextcloud/docker/tree/master/.examples/docker-compose/with-nginx-proxy/mariadb/fpm)
- **radio**: liquidsoap + icecast. For now in `./radio`.

