#!/bin/bash

# tcpdump examples

tcpdump -i wlp2s0 arp

# ignore domain, http, and https ports
tcpdump -i wlp2s0 -n ip and not port domain and not port http and not port https
