FROM nvidia/cuda:9.0-devel-centos7

RUN groupadd -g 2000 miner && \
    useradd -u 2000 -g miner -m -s /bin/bash miner && \
    echo 'miner:miner' | chpasswd
RUN yum -y update
RUN yum -y install git automake libssl-dev libcurl4-openssl-dev wget


#ccminer-tpruvot
#RUN cd && git clone https://github.com/tpruvot/ccminer.git
#RUN cd ~/ccminer && ./autogen.sh && ./configure && make



RUN yum -y install net-tools iputils-ping 
