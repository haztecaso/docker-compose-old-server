# Dockerizing haztecaso.com

Ideas for containerizing my home server.

## Containers

- **nginx**
  - web server + proxy + certs management
  - *volumes*: certs + config + www
- **git**
  - git with ssh access
  - cgit
  - *volumes*: keys + repos
- **vaultwarden**
  - *volume*: vaultwarden_data
- **mariadb_nextcloud**
- **nextcloud**
