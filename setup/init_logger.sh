#!/bin/bash
# Author: jeonghoon.kang@gmail.com
# Modification : kows17710@gmail.com

echo "Help: source init_logger.sh co <-- checkout" 
echo "      source init_logger.sh up <-- update" 

export gitdnpath='https://raw.githubusercontent.com/kowonsik/RPiLogger/master/setup'

mkdir devel/Logger
cd devel/Logger/


git init
git config --global user.name 'kowonsik' git config --global user.email 'kows17710@gmail.com'
git remote add origin https://github.com/kowonsik/RPiLogger.git
git push -u origin master



if [ $1 = 'co' ]; 
then
    echo ".... checking out"
    wget -N $gitdnpath/setup_shell.sh
    wget -N $gitdnpath/setup_apt.sh
    wget -N $gitdnpath/setup_code.sh
    source ./setup_apt.sh
    source ./setup_shell.sh
    source ./setup_code.sh co
elif [ $1 = 'up' ]; 
then
    echo ".... update"
    ./setup_code.sh up
else
    echo ".... no action... please add argument "
fi

unset gitdnpath
echo ".... ending init.sh"
