# shellcheck disable=SC2016
envsubst < /etc/nginx/www.template > /etc/nginx/conf.d/www.conf

rm -f /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
