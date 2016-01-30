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
	./install-nginx-build.sh
	export NGINX_KUNGFU_DIR=`pwd` && ./bin/nginx-build -d work -c build-config.sh
	cd work/nginx/1.9.10/nginx-1.9.10 && make install

watch:
	watchmedo shell-command \
		--patterns="./nginx.conf" \
		--command='echo "nginx.conf is modified." && cp ./nginx.conf ./etc/nginx.conf && ./bin/nginx -s reload'

clean:
	rm -rf bin etc log run tmp work
