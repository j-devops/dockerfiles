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


