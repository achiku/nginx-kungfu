# openresty-kungfu

Practice makes perfect

## Why created

I really wanted to get quick feedback from nginx config modification + nginx-lua/nginx-mruby scripts, and test it like I do when writing other programming language.


## Quick start

```
$ pip install -r requirements.txt
$ make build
$ cp nginx.conf ./etc/nginx.conf
$ make start
$ make watch
$ curl http://localhost:8099
$ // modify and save nginx.conf then nginx reloads its config automatically
```


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
$ make start
```

## Update nginx.conf and reload nginx

```
$ make watch
```

## Tailing nginx logs

```
$ make tail
```
