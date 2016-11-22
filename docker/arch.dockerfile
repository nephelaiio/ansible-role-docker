FROM codekoala/arch:latest
ENV container docker
RUN pacman -Syq --noconfirm python python2 sudo;\
ln -sf /usr/bin/python2 /usr/bin/python
CMD [ "/lib/systemd/systemd" ]
