#!/bin/bash
# fake dump
#
# Usage: fakedump.sh dir
# - dir: directory which contains dump files
# 
# ryecroft21@mstdn.maud.io  2018/12/12
#
TIME=2    # interval(sec)

if [ $# -lt 1 ]; then
  echo "ERROR: missing argument."  
  echo "Usage: fakedump.sh directory"
  exit 1
fi

if [ -d $1 ]; then
  DIR=$1
else
  echo "ERROR: directory not found."
  exit 1
fi

while true; do

  # select dump file
  if [ -d ${DIR} ]; then
    dumpfile=$(ls ${DIR} | sort -R | head -1)
  fi

  echo "----------------"
  echo ${dumpfile}
  echo "----------------"

  cat ${DIR}/${dumpfile} | while read line
  do
    echo ${line}
    sleep $((RANDOM % TIME))
  done

done
