# docker-dnsmasq
Local dnsmasq running in docker to resolve .docker domains

Make .docker domains use dnsmasq on MacOS
```shell
sudo mkdir /etc/resolver
touch /etc/resolver/docker
echo "nameserver 127.0.0.1" > /etc/resolver/docker
```
`scutil --dns` should show something like this and queries to .docker domains qhould show up in dnsmasq logs :

```
resolver #8
  domain   : docker
  nameserver[0] : 127.0.0.1
  flags    : Request A records, Request AAAA records
  reach    : 0x00030002 (Reachable,Local Address,Directly Reachable Address)
```

Credits 🙏🏼 : https://www.stevenrombauts.be/2018/01/use-dnsmasq-instead-of-etc-hosts/
