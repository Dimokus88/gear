#!/bin/bash

echo 'My_Gear_node_name='${My_Gear_node_name} >> $HOME/.bashrc
source $HOME/.bashrc

wget https://builds.gear.rs/gear-nightly-linux-x86_64.tar.xz
sudo tar -xvf gear-nightly-linux-x86_64.tar.xz -C /root
rm gear-nightly-linux-x86_64.tar.xz
./gear-node --telemetry-url 'ws://telemetry-backend-shard.gear-tech.io:32001/submit 0' --name ${My_Gear_node_name}
