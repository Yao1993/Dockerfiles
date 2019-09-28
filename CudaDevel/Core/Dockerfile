FROM  nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ARG ROOT_PASSWORD

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo "root:${ROOT_PASSWORD}" | chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh


EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]