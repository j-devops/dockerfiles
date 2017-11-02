nvidia-docker run \
	-v "/share/miner:/share" \
        -v "/etc/localtime:/etc/localtime:ro" \
	-it zeromine/miners:ubuntu-ccminer

