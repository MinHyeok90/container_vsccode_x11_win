# How to work 

run mobaxterm for x-server

use docker cli

only capy and paste

# Commend sequence

set DISPLAY=192.168.0.2:0.0

docker build -t jungo_dev:1 .

docker image prune -f

docker stop devj

docker run -d -t --name devj --rm -e DISPLAY=$DISPLAY jungo_dev:1

docker exec -it devj bash


## in container

\# code --user-data-dir="~/.vscode-root"
