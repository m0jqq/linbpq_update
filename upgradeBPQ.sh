#!/bin/bash

#Script to upgrade pilinbpq from G8BPQ Beta list
# Robin M0JQQ 21 Oct 2023

sudo systemctl stop linbpq

cd /opt/oarc/bpq

mv pilinbpq pilinbpq.old

wget https://www.cantab.net/users/john.wiseman/Downloads/Beta/pilinbpq

sudo chown root:root pilinbpq

sudo chmod +x pilinbpq

sudo systemctl start linbpq
rm pilinbpq.old