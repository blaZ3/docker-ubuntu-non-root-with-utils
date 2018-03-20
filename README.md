# docker-ubuntu-non-root-with-utils

配置好非root用户(用户名为dev, 主目录为/home/dev)的ubuntu镜像, 安装了一些必要的开发工具.

# 如何使用

* 本地构建

  ```shell
  docker build -t alvisisme/docker-ubuntu-non-root-with-utils .
  ```

* 远程拉取

  ```shell
  docker pull alvisisme/docker-ubuntu-non-root-with-utils
  ```

* 本地运行

  ```shell
  $ docker run -it alvisisme/docker-ubuntu-non-root-with-utils
  dev@51774830f8c3:~$ id
  uid=1000(dev) gid=1000(dev) groups=1000(dev),27(sudo)
  dev@51774830f8c3:~$ pwd
  /home/dev
  dev@51774830f8c3:~$
  ```
