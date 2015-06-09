FROM scratch
MAINTAINER Geoffrey Ragot <geoffrey.ragot@gmail.com>
ADD rootfs.tar /
ADD src /app
ENTRYPOINT ["python3", "/app/ipxe"]
