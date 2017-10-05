# INSTALLATION for Ubuntu 16.04 Xenial

USER = "gzholtkevych"

# DEVELOPMENT INSTALL

sudo apt install vim virtualenv git
sed -i '1 a export VISUAL=vim' ~/.bashrc
sed -i '2 a export EDITOR="$VISUAL"' ~/.bashrc

sudo apt-get install python3-dev
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update && sudo apt-get install python3.6
sudo apt-get install libmysqlclient-dev mysql-server
sudo apt-get install gcc python-dateutil python-docutils python-feedparser python-gdata python-jinja2 python-ldap python-libxslt1 python-lxml python-mako python-mock python-openid python-psycopg2 python-psutil python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi

# INSTALL DOCKER and DOCKER-COMPOSE
sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update && sudo apt install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
docker run hello-world

# Hack for prospector for virtualenv

pip install prospector==0.12.4
# and modify pylint package to be compatible with prospector



