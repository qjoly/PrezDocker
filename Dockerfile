FROM python:3.12.0-alpine3.17 as builder
WORKDIR /data
COPY . .
run apk add git
RUN pip install git+https://gitlab.com/da_doomer/markdown-slides.git
COPY zenburn.min.css /usr/local/lib/python3.10/site-packages/mdslides/cdn-release/build/styles/zenburn.min.css
RUN python3 -m mdslides CyberPrez.md --include img
RUN cp favicon.ico CyberPrez/favicon.ico
FROM alpine
RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*
COPY --from=builder /data/CyberPrez /var/www/localhost/htdocs
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]
