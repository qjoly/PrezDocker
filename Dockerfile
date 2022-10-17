FROM alpine as builder
WORKDIR /data
RUN apk --no-cache add py3-pip python3-dev git curl
COPY . .
RUN pip3 install git+https://github.com/QJoly/markdown-slides@prezdocker
COPY zenburn.min.css /usr/lib/python3.10/site-packages/mdslides/cdn-release/build/styles/zenburn.min.css
RUN python3 -m mdslides CyberPrez.md --include img
RUN cp favicon.ico CyberPrez/favicon.ico
FROM alpine

RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*

COPY --from=builder /data/CyberPrez /var/www/localhost/htdocs

CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]
