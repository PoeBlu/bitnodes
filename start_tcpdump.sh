#!/bin/bash
cd data/pcap/fbc0b6db
sudo tcpdump -i ens3 -w %s.ens3.pcap -v -n -G 2 -B 65536 -Z ubuntu 'tcp and not src host 10.0.3.221 and not src host 2600:1f18:24e9:4b03:85dc:8d3a:6ee:3dbe' > ens3 #2>&1 &
sudo tcpdump -i lo -w %s.lo.pcap -v -n -G 2 -B 65536 -Z ubuntu 'tcp and port 9050' > lo