# zero_mining dockerfiles

### Assumptions:  
1.  Docker installed
2.  nvidia-docker installed (only needed for mining or accessing GPUs)  

### Generic Build docker image
1. download file to a directory
2. docker build -t unbuntu/ccminer .
3. nvidia-docker run -it -v /etc/localtime:/etc/localtime:ro ubuntu/ccminer

##Build 0.15 btcgpu 
```
git clone https://github.com/zerobane/dockerfiles.git
cd dockerfiles/btcgpu 
./build_btcgpu.sh
./run_btcgpu.sh
Once in container:
start_bgoldd
```

##Run altcom coin build
```
Basically create a /share on host and enter a altcommunitycoin.conf using your values.

ie:
root@mpool:~/dockerfiles/altcomcoin# cat /share/altcom/altcommunitycoin.conf
listen=1
server=1
daemon=1
datatdir=/share/.
maxconnections=500
rpcuser=myuser
rpcpassword=mypass
port=29855
rpcport=28855
rpcconnect=127.0.0.1
addnode=109.230.231.216:29855
addnode=109.230.231.221:29855
addnode=188.68.56.33
addnode=multi.zpools.de
addnode=ZPools.de

Then:
build-altcom.sh
run-altcom.sh

```

### Other stuff:
```
crtr+p+q 			to detach
docker ps 			
docker attach b397fc033d96	to re-attach
```
