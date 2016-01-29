#!/bin/sh

./configure \
--sbin-path=${NGINX_KUNGFU_DIR}/bin/nginx \
--conf-path=${NGINX_KUNGFU_DIR}/etc/nginx.conf \
--lock-path=${NGINX_KUNGFU_DIR}/lock/nginx.lock \
--pid-path=${NGINX_KUNGFU_DIR}/run/nginx.pid \
--error-log-path=${NGINX_KUNGFU_DIR}/log/error.log \
--http-log-path=${NGINX_KUNGFU_DIR}/log/access \
--http-client-body-temp-path=${NGINX_KUNGFU_DIR}/tmp/client-body-tmp \
--http-fastcgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/fastcgi-tmp \
--http-proxy-temp-path=${NGINX_KUNGFU_DIR}/tmp/proxy-tmp \
--http-scgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/scgi-tmp \
--http-uwsgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/uwsgi-tmp \

# ./configure \
# --sbin-path=${current_dir}/nginx \
# --conf-path=${current_dir}/etc/nginx.conf \
# --error-log-path=${current_dir}/log/error.log \
# --pid-path=${current_dir}/run/nginx.pid \
# --lock-path=${current_dir}/lock/nginx.lock \
# --http-log-path=${current_dir}/log/nginx/access.log \
# --http-client-body-temp-path=/var/lib/nginx/body \
# --http-proxy-temp-path=/var/lib/nginx/proxy \
# --http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
# --http-uwsgi-temp-path=/hoge
