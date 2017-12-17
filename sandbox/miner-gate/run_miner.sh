nvidia-docker run \
	-v "/share/miner:/share:rw" \
        -v "/etc/localtime:/etc/localtime:ro" \
	-it zeromine/centos-miners

