#!/bin/bash

FILES="
bash
bashrc
bash_profile
ackrc
agignore
gitconfig
gitignore
irbrc
pryrc
pryrc_rails
"

# Remove existing links or files - this is dangerous
if [ "$1" == "reset" ]
then
  for f in $FILES
  do
    if [ -f ~/.$f -o -d ~/.$f ]
    then
      if [ -h ~/.$f ]
      then
        echo "Unlinking ~/.$f"
        rm ~/.$f
      else
        echo "WARNING: ~/.$f exists and appears to be a regular file - not removing"
      fi
    fi
  done
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for f in $FILES
do
  if [ ! -f ~/.$f ]
  then
    echo "Linking $DIR/$f to ~/.$f" && ln -s $DIR/$f ~/.$f
  else
    echo "WARNING: ~/.$f exists - not linking"
  fi
done
