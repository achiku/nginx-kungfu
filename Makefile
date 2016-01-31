VERSION=0.0.1

start:
	PREFIX=`pwd` && ./bin/nginx -p $$PREFIX
	ps awux | grep nginx | grep -v grep | grep -v watchmedo

stop:
	./bin/nginx -s stop
	ps awux | grep nginx | grep -v grep | grep -v watchmedo

reload:
	./bin/nginx -s reload

tail:
	tail -f ./log/access.log ./log/error.log

build:
	export NGINX_KUNGFU_DIR=`pwd` && \
		./bin/nginx-build -d work \
		-c build-config.sh \
		-openresty -pcre \
		-openssl && \
	for d in 'tmp run log work etc'; do mkdir -p $$d; done && \
	cd work/openresty/1.9.7.2/ngx_openresty-1.9.7.2 && \
	make install && \
	cp nginx.conf ./etc

watch:
	watchmedo shell-command \
		--patterns="./nginx.conf" \
		--command='echo "nginx.conf is modified." && cp ./nginx.conf ./etc/nginx.conf && ./bin/nginx -s reload'

clean:
	rm -rf etc log run tmp luajit lualib nginx
