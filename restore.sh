#!  /bin/bash
set -e

#If we have this file - unziped
ourdir=$1

if [[ -d "$ourdir" ]]
then
  ourfile="$1/arh.zip"
  unzip "$ourfile"
  echo "file unzipped"
else
  echo "We have not such file $ourdir"  
fi

