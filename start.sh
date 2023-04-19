#!/bin/bash
ALLOW_IPS=$ALLOW_IPS

if [ -n "$ALLOW_IPS" ]; then
  IFS=',' read -ra IPS <<< "$ALLOW_IPS"

  for IP in "${IPS[@]}"; do
      echo "allow ${IP};" >> /etc/nginx/configs/whitelist.conf
  done

  echo "deny all;" >> /etc/nginx/configs/whitelist.conf
fi

# shellcheck disable=SC2016
envsubst < /etc/nginx/www.template > /etc/nginx/conf.d/www.conf

rm -f /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
