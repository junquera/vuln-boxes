FROM ubuntu:22.04

RUN apt update && apt install -y ssh sudo

RUN useradd -rm -d /home/biblio -s /bin/bash -u 1000 biblio
RUN useradd -rm -d /home/admin -s /bin/bash -u 1001 admin

RUN  echo 'biblio:biblio' | chpasswd
RUN  echo 'admin:123456789' | chpasswd

RUN echo "Bravo!" > /root/flag.txt
RUN chmod 400 /root/flag.txt

RUN service ssh start
EXPOSE 22

COPY command.sh /home/biblio/.ssh/command.sh
COPY biblio.pub /home/biblio/.ssh/authorized_keys
COPY words.txt /home/biblio/words.txt

COPY force_command.conf /etc/ssh/sshd_config.d/

CMD ["/usr/sbin/sshd","-D"]
