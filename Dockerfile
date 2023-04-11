FROM nginx:stable

ENV PROXY_BUFFERING=off \
    PROXY_PASS=https://api.openai.com \
    ALLOW_IPS=all

COPY . /etc/nginx/

EXPOSE 80

ENTRYPOINT ["/bin/sh", "/etc/nginx/start.sh"]
