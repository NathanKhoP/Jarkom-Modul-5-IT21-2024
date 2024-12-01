iptables -A INPUT -p icmp --icmp-type echo-request -j DROP # block pings TO fairy
iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT # allow pings FROM fairy