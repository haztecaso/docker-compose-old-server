# Docker cgit

[cgit](https://git.zx2c4.com/cgit/) docker image based on alpine latest.

## Useful mounts

- '/etc/cgitrc': cgit config file.
- '/srv/git': Path of git repos.

## Reverse proxy with nginx

```
    location / {
		proxy_pass http://127.0.0.1:8080/cgi-bin/cgit.cgi/;
		proxy_set_header Host $host;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		proxy_set_header X-Forwarded-Proto $scheme;
    }

    location  /cgit.css {
		proxy_pass http://127.0.0.1:8080/cgit.css;
		proxy_set_header Host $host;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		proxy_set_header X-Forwarded-Proto $scheme;
    }

    location  /favicon.ico {
		proxy_pass http://127.0.0.1:8080/favicon.ico;
		proxy_set_header Host $host;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		proxy_set_header X-Forwarded-Proto $scheme;
    }
    location  /cgit.png {
		proxy_pass http://127.0.0.1:8080/cgit.png;
		proxy_set_header Host $host;
		proxy_set_header X-Real-IP $remote_addr;
		proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
		proxy_set_header X-Forwarded-Proto $scheme;
    }
```


## References

[cgit - A hyperfast web frontend for git repositories written in C.](https://git.zx2c4.com/cgit/)
