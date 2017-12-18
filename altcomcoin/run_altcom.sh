docker run \
	-v "/share/altcom:/share" \
        -p 8338:8338 \
	-it ubuntu/altcom \
        /bin/bash -c "altcommunitycoind -datadir=/share/ | tailf /share/debug.log"

