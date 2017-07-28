FROM base/archlinux:latest
RUN pacman -Syy
RUN pacman -Sy --noconfirm python python2 sudo ; ln -sf /usr/bin/python2 /usr/bin/python
RUN pacman -Sy --noconfirm sed gzip
RUN pacman -Sy --noconfirm sed systemd systemd-sysvcompat procps
RUN echo LANG=en_US.UTF-8 > /etc/locale.conf
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN locale-gen
ENV container docker

(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME ["/sys/fs/cgroup"]
CMD ["usr/bin/systemd/systemd"]
