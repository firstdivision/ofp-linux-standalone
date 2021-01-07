# ofp-linux-standalone
Dockerize the OFP Linux Standalone Server..

# Resources
- https://www.fileplanet.com/archive/p-23875/Operation-Flashpoint-Resistance-Linux-Server-v1-96
- https://community.bistudio.com/wiki/Operation_Flashpoint:Dedicated_Server
- https://forums.bohemia.net/forums/topic/213201-running-linux-servers-in-2018/
- https://community.bistudio.com/wiki/server.cfg
- https://www.aligrant.com/web/games/ofp/misc/server

# Docker
docker build -t ofp-standalone-server .
docker run -d -p 80:80 ofp-standalone-server

Log into Docker container
docker exec -ti ofp-standalone-server powershell
