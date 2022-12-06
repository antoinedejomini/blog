#!/bin/bash
pip freeze > request.txt
sh blacked.sh
git config --global http.version HTTP/1.1
git config --global https.postBuffer 2097152000
git config --global http.postBuffer 2097152000
git config --global user.name "antoinedejomini"
git config --global user.email "gamedesignwargame@gmail.com"
branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
git pull origin $branch
git add .
current="`date +'%Y-%m-%d %H:%M:%S'`"
msg="Updated: $current"
git commit -m "wip $branch $msg"
git push -f origin $branch
