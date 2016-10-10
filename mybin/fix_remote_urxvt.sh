#!/bin/bash

fix(){
  ssh $1 'mkdir -p ~/.terminfo/r'
  scp /usr/share/terminfo/r/rxvt-unicode-256color $1:.terminfo/r
}

usage(){
  echo `basename $0` user@hostip
}


if [ -z $* ] ; then
  usage
  exit 127
fi

fix $1
