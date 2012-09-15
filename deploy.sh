#!/bin/bash

set -eu

filelist=files.list

dotfiles=$(cat $filelist)

for src in $dotfiles ; do
    dst="$HOME/.$src"
    echo "deploying $src to $dst"
    src="$(pwd)/$src"
    if [ $(readlink -f "$dst") = "$src" ] ; then
        echo -e "\tAlready deployed, skipped."
    elif [ ! -e "$dst" ] ; then
        echo -e "\tFile did not exist previously, creating."
        ln -s "$src" "$dst"
    elif $(diff -rq "$src" "$dst" 2>/dev/null) ; then
        echo -e "\tFile exists, but identical content, so overwriting."
        rm -rf "$dst"
        ln -s "$src" "$dst"
    else
        echo -e "\tWould overwrite with different content, skipped."
    fi
done
