FROM alpine as builder
WORKDIR /data
RUN apk --no-cache add py3-pip python3-dev git curl
RUN pip3 install git+https://gitlab.com/da_doomer/markdown-slides.git
COPY zenburn.min.css /usr/lib/python3.10/site-packages/mdslides/cdn-release/build/styles/zenburn.min.css
COPY . .
RUN mdslides CyberPrez.md --include img
FROM alpine

RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*

COPY --from=builder /data/CyberPrez /var/www/localhost/htdocs

CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]
