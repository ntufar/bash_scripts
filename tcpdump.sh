#!/bin/bash

# tcpdump examples

tcpdump -i wlp2s0 arp

# ignore domain, http, hrsp, and https ports
tcpdump -i wlp2s0 -n ip and not port domain and not port http and not port https and port not hsrp and port not xmpp-client and not arp

# Dump RIP requests
tcpdump -i wlp2s0 -n -v -s0 udp and port 520

# Dump OSPF 
tcpdump -i wlp2s0 -n -v 'ip[9] == 89'
tcpdump -i wlp2s0 -n -v ip proto ospf

# Dump bgp
tcpdump -i wlp2s0 -n -v ip proto ospf

# Dump all from a certain ip
tcpdump -i wlp2s0 src 94.202.154.9 or dst 94.202.154.9
