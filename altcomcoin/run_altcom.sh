docker run \
	-v "/share/altcom:/share" \
        -p 28855:28855 \
	-itd ubuntu/altcom \
        /bin/bash -c "altcommunitycoind -datadir=/share/ | tailf /share/debug.log"

