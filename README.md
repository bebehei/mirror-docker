# mirror-docker

Container for file mirror via HTTP and rsync.

## Usage

```
docker run -d \
  -p 10873:873 \
  -p 8080:80 \
  -v $PWD/mirror:/mirror \
  bebehei/mirror
```

## Restricting access

In default, rsync and http accepts only connections from `192.168.0.0/16` and `172.16.0.0/12`. You can override via the environment variable `ALLOW`.

```sh
docker run -d -p 10873:873 -e ALLOW='10.0.0.0/8 x.x.x.x/y' bebehei/mirror
```

## Origin

Forked from `nabeken/docker-volume-container-rsync` with additions for nginx.
