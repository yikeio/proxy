FROM nginx:stable

ENV PROXY_BUFFERING=off \
    PROXY_PASS=https://api.openai.com \
    ALLOW_IPS=all

COPY . /etc/nginx/

RUN openssl dhparam -out /etc/nginx/dhparam.pem 2048

EXPOSE 80 443

ENTRYPOINT ["/bin/sh", "/etc/nginx/start.sh"]
