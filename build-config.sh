#!/bin/sh

./configure \
--prefix=${NGINX_KUNGFU_DIR} \
--sbin-path=${NGINX_KUNGFU_DIR}/bin/nginx \
--conf-path=${NGINX_KUNGFU_DIR}/etc/nginx.conf \
--lock-path=${NGINX_KUNGFU_DIR}/lock/nginx.lock \
--pid-path=${NGINX_KUNGFU_DIR}/run/nginx.pid \
--error-log-path=${NGINX_KUNGFU_DIR}/log/error.log \
--http-log-path=${NGINX_KUNGFU_DIR}/log/access.log \
--http-client-body-temp-path=${NGINX_KUNGFU_DIR}/tmp/client-body-tmp \
--http-fastcgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/fastcgi-tmp \
--http-proxy-temp-path=${NGINX_KUNGFU_DIR}/tmp/proxy-tmp \
--http-scgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/scgi-tmp \
--http-uwsgi-temp-path=${NGINX_KUNGFU_DIR}/tmp/uwsgi-tmp \
-j2 \
