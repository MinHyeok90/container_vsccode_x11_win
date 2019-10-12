# mobaxterm 동작 : x-server
# docker cli 에 붙여넣기
# only capy and paste

set DISPLAY=192.168.0.2:0.0
docker build -t jungo_dev:1 .
docker image prune -f
docker stop devj
docker run -d -t --name devj --rm -e DISPLAY=$DISPLAY jungo_dev:1
docker exec -it devj bash

# Do sh code.cmd
# code --user-data-dir="~/.vscode-root"
