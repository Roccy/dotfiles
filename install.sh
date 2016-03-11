#!/bin/sh
for file in _*; do
    dest="$HOME/.${file#_}"
    source=$PWD/$file
    ln $source $dest
done
