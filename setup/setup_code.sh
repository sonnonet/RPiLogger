#!/bin/bash
#Author: jeonghoonkang http://github.com/jeonghoonkang

export gitdnpath='https://raw.githubusercontent.com/kowonsik/RPiLogger/master/sw'

cd devel/Logger

if [ $1 = 'up' ]; then
    echo "... updating"
    cd
    svn up --force
    cd
    
elif [ $1 = 'co' ]; then
    echo "... installing"
    cd
    wget 'http://github.com/kowonsik/RPiLogger/sect_ttyUSB0.py devel/Logger/
    #svn co svn://125.7.128.53/danalytics --username=tinyos
    cd
else
   echo "... do notihing for code install / update"
fi


