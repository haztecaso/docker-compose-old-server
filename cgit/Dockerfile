FROM alpine:latest

MAINTAINER Adrián Lattes Grassi <adrianlattes@disroot.org>

RUN apk add git cgit busybox-extras\
    python3 py3-markdown py3-pygments

RUN mkdir -p /srv/www/cgi-bin/\
 && ln -s /usr/share/webapps/cgit/* /srv/www/\
 && mv /srv/www/cgit.cgi /srv/www/cgi-bin/

COPY http.conf /etc/http.conf
COPY cgitrc /etc/cgitrc

EXPOSE 80

ENTRYPOINT ["busybox-extras", "httpd", "-v", "-f", "-p", "80", "-h", "/srv/www/"]
