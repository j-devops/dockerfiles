#Download base image ubuntu 16.04
FROM ubuntu:14.04
 
# Update Software repository
RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    libtool \
    autotools-dev \
    automake \
    pkg-config \
    bsdmainutils \
    python3 \
    libx11-xcb-dev \
    libfontconfig-dev \
    vim \
    nmap \
    rsyslog\
    nmap\
    qt5-qmake \
    libqt5scintilla2-dev \
    net-tools \
    icu-devtools libboost-all-dev libboost-atomic-dev libboost-atomic1.54-dev \
    libboost-atomic1.54.0 libboost-chrono-dev libboost-chrono1.54-dev \
    libboost-chrono1.54.0 libboost-context-dev libboost-context1.54-dev \
    libboost-context1.54.0 libboost-coroutine-dev libboost-coroutine1.54-dev \
    libboost-date-time-dev libboost-date-time1.54-dev libboost-date-time1.54.0 \
    libboost-dev libboost-exception-dev libboost-exception1.54-dev \
    libboost-filesystem-dev libboost-filesystem1.54-dev \
    libboost-filesystem1.54.0 libboost-graph-dev libboost-graph-parallel-dev \
    libboost-graph-parallel1.54-dev libboost-graph-parallel1.54.0 \
    libboost-graph1.54-dev libboost-graph1.54.0 libboost-iostreams-dev \
    libboost-iostreams1.54-dev libboost-iostreams1.54.0 libboost-locale-dev \
    libboost-locale1.54-dev libboost-locale1.54.0 libboost-log-dev \
    libboost-log1.54-dev libboost-log1.54.0 libboost-math-dev \
    libboost-math1.54-dev libboost-math1.54.0 libboost-mpi-dev \
    libboost-mpi-python-dev libboost-mpi-python1.54-dev \
    libboost-mpi-python1.54.0 libboost-mpi1.54-dev libboost-mpi1.54.0 \
    libboost-program-options-dev libboost-program-options1.54-dev \
    libboost-program-options1.54.0 libboost-python-dev libboost-python1.54-dev \
    libboost-python1.54.0 libboost-random-dev libboost-random1.54-dev \
    libboost-random1.54.0 libboost-regex-dev libboost-regex1.54-dev \
    libboost-regex1.54.0 libboost-serialization-dev \
    libboost-serialization1.54-dev libboost-serialization1.54.0 \
    libboost-signals-dev libboost-signals1.54-dev libboost-signals1.54.0 \
    libboost-system-dev libboost-system1.54-dev libboost-system1.54.0 \
    libboost-test-dev libboost-test1.54-dev libboost-test1.54.0 \
    libboost-thread-dev libboost-thread1.54-dev libboost-thread1.54.0 \
    libboost-timer-dev libboost-timer1.54-dev libboost-timer1.54.0 \
    libboost-tools-dev libboost-wave-dev libboost-wave1.54-dev \
    libboost-wave1.54.0 libboost1.54-dev libboost1.54-tools-dev libcr0 \
    libdb++-dev libdb-dev libdb5.3++ libdb5.3++-dev libdb5.3-dev libhwloc-dev \
    libhwloc-plugins libhwloc5 libibverbs-dev libibverbs1 libicu-dev libicu52 \
    libminiupnpc-dev libminiupnpc8 libnuma1 libopenmpi-dev libopenmpi1.6 \
    libpci-dev libpci3 libpciaccess0 libpython-dev libpython2.7-dev \
    libqrencode-dev libqrencode3 libssl-dev libssl-doc libtorque2 libxml2-dev \
    mpi-default-bin mpi-default-dev ocl-icd-libopencl1 openmpi-bin \
    openmpi-common
 
   

#clone latest  from git
RUN cd && git clone https://github.com/altcommunitycoin/altcommunitycoin-skunk.git


RUN cd /root/altcommunitycoin-skunk/src/leveldb && \
chmod +x build_detect_platform && \
make clean && make libleveldb.a libmemenv.a && \
cd .. && \
make -f makefile.unix  

RUN cp /root/altcommunitycoin-skunk/src/altcommunitycoind /usr/bin/.

EXPOSE 28855

#make the depends
#RUN cd /root/BTCGPU/depends && make

#make some pasta time
#RUN cd /root/BTCGPU/ && ./autogen.sh && ./configure --without-gui --prefix=/root/BTCGPU/depends/x86_64-pc-linux-gnu/ --disable-shared && make 

#setup pass for cli commands
#RUN mkdir /root/.bitcoingold/
#RUN printf "rpcuser=bitcoin\nrpcpassword=bitcoin\nrpcport=18332" > /root/.bitcoingold/bitcoin.conf

#create a run script for bgoldd
#RUN echo "bgoldd -rest -addnode=45.56.84.44 -addnode=109.201.133.93 -addnode=206.221.179.22 -datadir=/share/ -gen=0 -dns=1 -listen=1 -rpcallowip=0.0.0.0/0 -rpcbind=0.0.0.0 -rpcuser=bitcoin -showmetrics -rpcpassword=bitcoin -printtoconsole" > /usr/bin/start_bgoldd && chmod 755 /usr/bin/start_bgoldd

#check valid chain
#RUN echo "bgold-cli getblockhash 499437" > /usr/bin/check_bgoldd && chmod 755 /usr/bin/check_bgoldd

#copy files around
#RUN cp /root/BTCGPU/src/bitcoin-tx /usr/bin/.
#RUN cp /root/BTCGPU/src/bgold-cli /usr/bin/.
#RUN cp /root/BTCGPU/src/bgoldd /usr/bin/.

#EXPOSE 8338


