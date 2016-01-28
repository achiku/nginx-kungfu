#!/bin/sh

current_dir=$( pwd )

./configure \
--sbin-path=${current_dir}/nginx \
--conf-path=${current_dir}/etc/nginx.conf \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--pid-path=/var/run/nginx.pid \
--lock-path=/var/lock/nginx.lock \
--http-log-path=/var/log/nginx/access.log \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-proxy-temp-path=/var/lib/nginx/proxy \
--with-http_stub_status_module \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
--with-debug \
--with-http_gzip_static_module \
--with-http_spdy_module \
--with-http_ssl_module \
--with-pcre-jit \
