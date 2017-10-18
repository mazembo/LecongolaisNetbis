apt-get update
apt-get install wget
wget -qO- https://get.docker.com/ | sh
apt-get install curl
curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt-get install git-core
