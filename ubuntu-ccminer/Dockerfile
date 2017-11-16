FROM nvidia/cuda:8.0-devel

RUN groupadd -g 2000 miner && \
    useradd -u 2000 -g miner -m -s /bin/bash miner && \
    echo 'miner:miner' | chpasswd
RUN apt-get -y update
RUN apt-get -y install git automake libssl-dev libcurl4-openssl-dev wget

USER miner

#ccminer-tpruvot
RUN cd && git clone https://github.com/tpruvot/ccminer.git
RUN cd ~/ccminer && ./autogen.sh && ./configure && make

#ccminer-alexis
RUN cd && git clone https://github.com/alexis78/ccminer.git alexis78-ccminer
RUN cd ~/alexis78-ccminer && ./autogen.sh && ./configure && make

#xmr-stak
#RUN cd && git clone https://github.com/xmr-stak/xmr-stak/archive/v1.3.0-1.5.0.tar.gz
RUN cd && wget https://github.com/IndeedMiners/xmr-aeon-stak/archive/2.0-XMR-AEON-SUMO.tar.gz
RUN cd && tar xvfz 2.0-XMR-AEON-SUMO.tar.gz

#xmr aeon
USER root
RUN apt-get -y install vim libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev
RUN cd /home/miner/xmr-aeon-stak-2.0-XMR-AEON-SUMO/ && cmake . -DCUDA_ARCH=61 -DOpenCL_ENABLE=OFF && make install

#copy files around
RUN cp /home/miner/ccminer/ccminer /usr/bin/.

RUN apt-get -y install net-tools iputils-ping 
