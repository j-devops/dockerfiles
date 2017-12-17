#Download base image ubuntu 16.04
FROM ubuntu:16.04
 
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
    wget\
    net-tools 
    

#RUN apt-get -y install curl git automake bsdmainutils python3 libx11-xcb-dev libfontconfig-dev vim libssl-dev libcurl4-openssl-dev build-essential libtool autotools-dev pkg-config libevent-dev bsdmainutils libsodium-dev
#RUN apt-get -y install libboost-all-dev software-properties-common
#RUN add-apt-repository ppa:bitcoin/bitcoin
#RUN apt-get update
#RUN apt-get -y install libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev
#RUN apt-get -y install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler

#clone latest BTCGPU from git
#RUN cd && wget https://github.com/TrezarCoin/TrezarCoin/releases/download/v1.0.0.0-tzc/TrezarCoinUbuntu.tar.gz
#RUN cd && tar xvfz TrezarCoinUbuntu.tar.gz

#copy files around
#RUN cp /root/BTCGPU/src/bitcoin-tx /usr/bin/.
#RUN cp /root/BTCGPU/src/bgold-cli /usr/bin/.
#RUN cp /root/BTCGPU/src/bgoldd /usr/bin/.

EXPOSE 17299
EXPOSE 17298


