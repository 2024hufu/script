# script

安装docker

```go
curl -fsSL https://get.docker.com | bash -s docker
```

安装java

```go
sudo apt install default-jdk

sudo apt install default-jre

vim ~/.bashrc
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
source ~/.bashrc
```

python

```go
apt install python3-pip

sudo pip3 install PyMySQL
```

go

```go
wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.23.2.linux-amd64.tar.gz

echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc

source ~/.bashrc
```

mysql

```go
docker run -p 3306:3306 --name gva_mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest

docker run -p 3306:3306 --name webase_mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.6
```

nvm

```go
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

```

go-sdk

```go
git clone https://github.com/FISCO-BCOS/go-sdk.git
cd go-sdk/v3
go mod tidy
go build -ldflags="-r /usr/local/lib" -o console ./cmd/console.go
./console help
```

安装WEBASE

https://webasedoc.readthedocs.io/zh-cn/latest/docs/WeBASE/install.html

```
git clone -b master-3.0 https://github.com/WeBankBlockchain/WeBASE.git

cd WeBASE/deploy && rm common.properties

vim common.properties

python3 deploy.py installAll
```

```go
[common]
# Webase Subsystem Version (v3.0)
webase.web.version=v3.1.1
webase.mgr.version=v3.1.1
webase.sign.version=v3.1.1
webase.front.version=v3.1.1

# Mysql database configuration of WeBASE-Node-Manager
mysql.ip=localhost
mysql.port=3306
mysql.user=root
mysql.password=123456
mysql.database=webasenodemanager

# Mysql database configuration of WeBASE-Sign
sign.mysql.ip=localhost
sign.mysql.port=3306
sign.mysql.user=root
sign.mysql.password=123456
sign.mysql.database=webasesign

# H2 database name of WeBASE-Front
front.h2.name=webasefront

# WeBASE-Web service port
web.port=5000

# WeBASE-Node-Manager service port
mgr.port=5001

# WeBASE-Front service port
front.port=5002

# WeBASE-Sign service port
sign.port=5004

# sdk ssl encrypt type (0: standard ssl, 1: sm ssl)
# if use sm ssl, fisco bcos would use sm as encrypt type and ssl type
encrypt.type=0

# Use existing chain or not (yes/no)
if.exist.fisco=no

### if build new chain, [if.exist.fisco=no]
# Configuration required when building a new chain
# Node listening IP
node.listenIp=127.0.0.1
# Node rpc service port
node.rpcPort=20200
# Node p2p service port
node.p2pPort=30300
# Fisco-bcos version(v3.0.0 or above)
fisco.version=v3.11.0
# Number of building nodes (default value: 2)
node.counts=nodeCounts
# whether air version fisco bcos use liquid(wasm), default solidity
# if use liquid, require configure liquid in the host of webase-front
# [0: solidity, 1: liquid]
fisco.wasm=0

### if using existing chain, [if.exist.fisco=yes]
# Configuration required when using existing chain
# Node rpc peers
node.rpcPeers=['127.0.0.1:20200','127.0.0.1:20201']
# Under the path, there should be SDK certificates (eg: ca.crt,sdk.crt,sdk.key)
sdk.dir=/data/app/nodes/127.0.0.1/sdk
```
