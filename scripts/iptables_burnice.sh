iptables -t nat -A PREROUTING -p tcp -j DNAT --to-destination 10.74.1.226 --dport 8080
iptables -A FORWARD -p tcp -d 10.74.1.226 -j ACCEPT

iptables --policy INPUT DROP
iptables --policy OUTPUT DROP
iptables --policy FORWARD DROP