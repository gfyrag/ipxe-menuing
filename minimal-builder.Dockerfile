FROM gfyrag/buildroot
MAINTAINER Geoffrey Ragot <geoffrey.ragot@gmail.com>
ADD buildroot-config $BUILDROOT_LOCATION/.config
RUN make oldconfig
RUN make
WORKDIR $BUILDROOT_LOCATION
ENTRYPOINT cat output/images/rootfs.tar
