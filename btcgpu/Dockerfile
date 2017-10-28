#Download base image ubuntu 16.04
FROM ubuntu:16.04
 
# Update Software repository
RUN apt-get update
RUN apt-get -y install git automake libssl-dev libcurl4-openssl-dev build-essential libtool autotools-dev pkg-config libevent-dev bsdmainutils libsodium-dev
RUN apt-get -y install libboost-all-dev software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get -y install libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev
RUN apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler

#clone latest BTCGPU from git
RUN cd && git clone https://github.com/BTCGPU/BTCGPU.git

#make some pasta time
RUN cd ~/BTCGPU/ && ./autogen.sh && ./configure && make

