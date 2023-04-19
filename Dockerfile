FROM nginx:stable

ENV PROXY_BUFFERING=off \
    PROXY_PASS=https://api.openai.com \
    ALLOW_IPS=all

COPY . /etc/nginx/

RUN openssl dhparam -out /etc/nginx/dhparam.pem 2048 \
    && chmod +x /etc/nginx/start.sh

EXPOSE 80 443

ENTRYPOINT [ "/etc/nginx/start.sh" ]
