#!/bin/bash


function create(){
    cd
    source .env
    python main.py $1
    cd $FILEPATH$1
    git init
    git remote add origin https://github.com/$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}

# source ~/.my_commands.sh