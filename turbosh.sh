#!/bin/bash

POOL=stratum+tcp://eth-pool.beepool.org:9530
WALLET=agus
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
