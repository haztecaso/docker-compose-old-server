FROM alpine:latest

MAINTAINER Adrián Lattes Grassi <adrianlattes@disroot.org>

RUN apk add openssh git cgit && ssh-keygen -A\
 && addgroup -S git && adduser -S git -G git\
 && mkdir /srv/git && chown git:git /srv/git

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
