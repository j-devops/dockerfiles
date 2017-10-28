# zero_mining dockerfiles

### Assumptions:  
1.  Docker installed
2.  nvidia-docker installed (only needed for mining or accessing GPUs)  

### Generic Build docker image
1. download file to a directory
2. docker build -t unbuntu/ccminer .
3. nvidia-docker run -it -v /etc/localtime:/etc/localtime:ro ubuntu/ccminer

## TLDR - Build latest btcgpu 
```
git clone https://github.com/zerobane/dockerfiles.git
cd btcgpu 
docker build -t ubuntu/btcgpu .
```

### Other stuff:
```
crtr+p+q 			to detach
docker ps 			
docker attach b397fc033d96	to re-attach
```
