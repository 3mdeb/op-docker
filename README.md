# op-docker

Docker container for building  OpenPOWER firmware

## Building container

```
$ git clone https://github.com/3mdeb/op-docker.git
$ cd op-docker
$ docker build -t 3mdeb/op-docker .
```

## Building Talos II firmware

```
$ git clone https://scm.raptorcs.com/scm/git/talos-op-build
$ cd talos-op-build
$ git checkout raptor-v2.00
$ git submodule update --init --checkout
$ docker run --rm -it -v ${PWD}:/home/user/talos-op-build \
     -w /home/user/talos-op-build 3mdeb/op-docker /bin/bash
(docker)$ ./op-build talos_defconfig && ./op-build
```

> The build process is time-consuming and downloads lots of source code. Be
> sure to have quite powerful machine and good network bandwidth.

The result image can be found as `<talos-op-build>/output/image/talos.pnor`.
