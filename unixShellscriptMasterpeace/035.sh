#!/bin/bash

# リモートホストに直接アーカイブする

username="user"
server="server"

tac cvf - myapp/log | ssh ${username}@${server} "cat > /backup/myapplog.tar"
