FROM scratch
ADD openwrt.tar.gz /

USER root
EXPOSE 80
EXPOSE 22

# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
