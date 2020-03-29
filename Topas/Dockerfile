FROM ubuntu:18.04

ARG ROOT_PASSWORD

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo "root:${ROOT_PASSWORD}" | chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt-get update && apt-get install -y libexpat1-dev libgl1-mesa-dev libglu1-mesa-dev libxt-dev xorg-dev build-essential libharfbuzz-dev screen

COPY G4Data /G4Data
RUN echo "export TOPAS_G4_DATA_DIR=/G4Data" >> ~/.bashrc

ADD topas_3_3_debian9_amd64.tar.gz /
RUN echo "export PATH=/topas/bin:\$PATH" >> ~/.bashrc

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]