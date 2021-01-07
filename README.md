# ofp-linux-standalone
Dockerize the OFP Linux Standalone Server..

# Resources
- https://www.fileplanet.com/archive/p-23875/Operation-Flashpoint-Resistance-Linux-Server-v1-96
- https://community.bistudio.com/wiki/Operation_Flashpoint:Dedicated_Server
- https://forums.bohemia.net/forums/topic/213201-running-linux-servers-in-2018/
- https://community.bistudio.com/wiki/server.cfg
- https://www.aligrant.com/web/games/ofp/misc/server

From: https://forums.bohemia.net/forums/topic/23984-190f-linux-and-segmentation-fault/

`The "port 2302" normally means something is not correct with your network setup, check your /etc/hosts, resolv.conf, route, ifconfig, etc.`

# Docker
docker build -t ofp-standalone-server .
docker run -d -p 80:80 ofp-standalone-server

Log into Docker container
docker exec -ti ofp-standalone-server powershell 
