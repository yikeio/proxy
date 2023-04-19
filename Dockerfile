FROM nginx:stable

ENV PROXY_BUFFERING=off \
    PROXY_PASS=https://api.openai.com \
    ALLOW_IPS=all

COPY . /etc/nginx/

RUN chmod +x /etc/nginx/start.sh

EXPOSE 80

ENTRYPOINT [ "/etc/nginx/start.sh" ]
