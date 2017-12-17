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
    net-tools 
    

#clone latest  from git
RUN cd && git clone https://github.com/altcommunitycoin/altcommunitycoin-skunk.git

#RUN cd /root/altcommunitycoin-skunk/src/leveldb && \
#chmod +x build_detect_platform && \
#make clean && make libleveldb.a libmemenv.a && \
#make -f makefile.unix  

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


