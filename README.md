# docker-ubuntu-non-root-with-utils

ubuntu with a non-root user (soduable) so work with some anti-root tools, with some daily tools

```shell
$ docker run -it alvisisme/docker-ubuntu-non-root-with-utils
dev@51774830f8c3:~$ id
uid=1000(dev) gid=1000(dev) groups=1000(dev),27(sudo)
dev@51774830f8c3:~$ pwd
/home/dev
dev@51774830f8c3:~$
```
