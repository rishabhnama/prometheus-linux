#! /bin/bash

git clone https://github.com/rishabhnama/prometheus-linux
wget https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometheus-2.35.0.linux-amd64.tar.gz
tar -xvf prometheus-2.35.0.linux-amd64.tar.gz
cp prometheus-linux/prometheus-files/prometheus.yml prometheus-2.35.0.linux-amd64
cd prometheus-2.35.0.linux-amd64
./prometheus

cd ..

wget https://github.com/prometheus/pushgateway/releases/download/v1.4.2/pushgateway-1.4.2.linux-amd64.tar.gz
tar xvzf pushgateway-1.4.2.linux-amd64.tar.gz
cd pushgateway-1.4.2.linux-amd64
./pushgateway

cd ..
cd prometheus-linux
chmod u+x better-top
chmod u+x better-top2
while sleep 1; do ./better-top; done && while sleep 1; do ./better-top2; done;