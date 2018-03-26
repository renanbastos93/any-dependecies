#!/bin/bash

FILE=$1
LANGUAGE=$2
MYPATH="/git"

function test {
    echo "test run"
}

function installNodejsDependecies {
    npm install >> ../nodejs-dependecies-log.txt
}

case $LANGUAGE in
    "node")
        for DIR in $(ls -d $pasta*/); do
            cd $MYPATH"/"$DIR
            if [ -f $FILE ]; then
                echo "Open ". $DIR >> ../nodejs-dependecies-log.txt
                installNodejsDependecies
                echo "Install success ".$DIR
                echo "Close of path ".$DIR >> ../nodejs-dependecies-log.txt
                cd $MYPATH
            fi
        done
    ;;
        "python")      
        echo "Under development to python"
    ;;
    *)
        echo "Don't action"
    ;;
esac
