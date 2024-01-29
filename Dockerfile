FROM kalilinux/kali-rolling
RUN sed -i '1d' /etc/apt/sources.list
RUN echo "deb http://ftp.acc.umu.se/mirror/kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
# RUN apt-get install -y apt-transport-https
# RUN echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
# RUN echo "deb - src https://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
# RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN apt-get -y update 
RUN apt-get -y upgrade
RUN apt install -y wget
RUN apt install -y telnet
RUN apt install -y procps
RUN apt install -y net-tools
RUN apt install -y sudo
RUN apt install -y vim
RUN apt install -y ruby-full
RUN apt install -y curl
RUN apt install -y tar gzip build-essential
# RUN apt install -y kali-linux-headless
COPY ./pentbox-1.8.tar.gz .