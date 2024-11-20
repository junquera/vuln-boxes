FROM ubuntu:22.04

RUN apt update && apt install -y ssh sudo

RUN useradd -rm -d /home/admin -s /bin/bash -u 1000 -g sudo admin

RUN  echo 'admin:monkey' | chpasswd
RUN  echo 'root:123456789' | chpasswd

RUN service ssh start
EXPOSE 22

COPY command.sh /home/admin/.ssh/command.sh
COPY biblio /home/admin/.ssh/biblio
RUN chown admin /home/admin/.ssh/*
COPY force_command.conf /etc/ssh/sshd_config.d/

CMD ["/usr/sbin/sshd","-D"]
