# dockerfiles

Assumptions:  
Docker installed
nvidia-docker installed

note: this was tested / built under centos 7.3

Build docker image
1. download file to a directory
2. docker build -t unbuntu/ccminer .
3. nvidia-docker run -it -v /etc/localtime:/etc/localtime:ro ubuntu/ccminer

Other:
crtr+p+q to detach
docker ps 
docker attach b397fc033d96
