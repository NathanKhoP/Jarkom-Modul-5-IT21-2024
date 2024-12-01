echo 'nameserver 192.168.122.1' > /etc/resolv.conf
apt-get update && apt-get install isc-dhcp-server -y

echo '
INTERFACESv4="eth0"
INTERFACESv6=""
' > /etc/default/isc-dhcp-server

echo '
# Jane & Policeboo 
subnet 10.74.0.0 netmask 255.255.255.0 {
  range 10.74.0.2 10.74.0.254;
  option routers 10.74.0.1;
  option broadcast-address 10.74.0.255;
  option domain-name-servers 10.74.1.203;
}
# Ellen & Lycaon 
subnet 10.74.1.0 netmask 255.255.255.128 {
  range 10.74.1.2 10.74.1.126;
  option routers 10.74.1.1;
  option broadcast-address 10.74.1.127;
  option domain-name-servers 10.74.1.203;
}
# Caesar & Burnice 
subnet 10.74.1.128 netmask 255.255.255.192 {
  range 10.74.1.130 10.74.1.190;
  option routers 10.74.1.129;
  option broadcast-address 10.74.1.191;
  option domain-name-servers 10.74.1.203;
}
subnet 10.74.1.200 netmask 255.255.255.248{
  range 10.74.1.202 10.74.1.206;
  option routers 10.74.1.201;
  option broadcast-address 10.74.1.207;
  option domain-name-servers 10.74.1.203;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart