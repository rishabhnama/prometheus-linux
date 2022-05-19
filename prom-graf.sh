#! /bin/bash

git clone https://github.com/rishabhnama/prometheus-linux

sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/enterprise/release/grafana-enterprise_8.5.2_amd64.>
sudo dpkg -i grafana-enterprise_8.5.2_amd64.deb

wget https://github.com/prometheus/prometheus/releases/download/v2.35.0/prometh>
tar -xvf prometheus-2.35.0.linux-amd64.tar.gz
cp prometheus-linux/prometheus-files/prometheus.yml prometheus-2.35.0.linux-amd>
cd prometheus-2.35.0.linux-amd64
./prometheus &


