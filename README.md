# sample-nginx-kungfu

Practice makes perfect


## Install nginx-build

```
$ ./install-nginx-build.sh
```

```
$ ./bin/nginx-build --version
nginx-build 0.6.8
Compiler: gc go1.5.3
Copyright (C) 2014-2016 Tatsuhiko Kubo <cubicdaiya@gmail.com>
```

## Install nginx

```
$ export NGINX_KUNGFU_DIR=$(pwd)
$ ./bin/nginx-build -d work -c build-config.sh
$ cd work/nginx/1.9.10/nginx-1.9.10
$ make install
```

## Start nginx

```
$ ./bin/nginx -g "daemon off;"
```
