#!/bin/bash

#Takes a single argument (name of the UCI server being logged into)

username="yourusrname" 

#defaults to openlab if first argument is null
if [ -z "$1" ]; then
    serverName="openlab"
elif [ $1 == "openlab" ]; then
    serverName="openLab"
elif [ $1 == "odin" ]; then
    serverName="odin"
else
    serverName="UNK"
fi

#connecting to server
if [ $serverName == "UNK" ]; then
    echo -e "INVALID SERVER NAME!!!\n"
else
    echo -e "Connecting to the $serverName server\n"
    ssh $username@$serverName.ics.uci.edu
fi
