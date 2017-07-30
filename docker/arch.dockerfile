FROM base/archlinux:latest

ENV container docker

RUN pacman -Syy
RUN pacman -Sy --noconfirm python python2 sudo ; ln -sf /usr/bin/python2 /usr/bin/python
RUN pacman -Sy --noconfirm sed gzip systemd systemd-sysvcompat procps

RUN find /etc/systemd/system \
         /lib/systemd/system \
         -path '*.wants/*' \
         -not -name '*journald*' \
         -not -name '*systemd-tmpfiles*' \
         -not -name '*systemd-user-sessions*' \
         -exec rm \{} \;

RUN systemctl set-default multi-user.target

RUN echo LANG=en_US.UTF-8 > /etc/locale.conf
RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN locale-gen

CMD ["/bin/bash", "-c", "exec /sbin/init --log-target=journal 3>&1"]