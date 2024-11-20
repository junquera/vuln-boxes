FROM ubuntu:22.04

RUN apt update && apt install -y ssh sudo

RUN useradd -rm -d /home/test -s /bin/bash -u 1000 -g sudo test
RUN useradd -rm -d /home/admin -s /bin/bash -u 1001 -g sudo admin

RUN  echo 'test:monkey' | chpasswd
RUN  echo 'admin:123456789' | chpasswd

RUN service ssh start
EXPOSE 22

COPY command.sh /home/test/.ssh/command.sh
COPY biblio /home/test/.ssh/biblio
RUN chown test /home/test/.ssh/*
COPY force_command.conf /etc/ssh/sshd_config.d/

CMD ["/usr/sbin/sshd","-D"]
