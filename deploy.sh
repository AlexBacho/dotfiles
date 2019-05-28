#!/bin/bash

PREFIX="dot-*"

backup(){
    mkdir -p "backup"
    for f in $PREFIX; do
        cp "../.${f#$PREFIX}" backup/
    done
}

deploy(){
    for f in $PREFIX*; do
        cp $f /root/.${f#$PREFIX}
    done
}

main(){
    backup    
    deploy
}

main
