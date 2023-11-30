#!/bin/bash

usage() 
{
  local script_name=$(basename "$0")

  cat << END
    usage: ./findgrep.sh PATTHERN DIR FILE_PATTERN

END
}

 if [ "$#" -eq 0 ]; then
  usage
  exit 1
if

pattern=$1
directory=$2
filepattern=$3

if [ -z "$directory" ]; then
  directory="."
fi

if [ -z "$filepattern" ]; then
  filepattern="*"
fi
find "$directory" -type f -name "$filepattern" | xargs grep -nH "$pattern"
