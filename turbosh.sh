#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xaeBe2D8843e31a4a385172C5fde43D9a9b081a74
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
