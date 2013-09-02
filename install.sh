#!/bin/zsh

while getopts vtza option
do
    case $option in
        "v" )
            list=("vim" "vimrc")
            ;;
        "z" )
            list=("zsh" "zshrc")
            ;;
	"t" )
	    list=("tmux.conf")
            ;;
        "a" )
            list=("tmux.conf" "vim" "vimrc" "zsh" "zshrc")
    esac
done

for dotfile in ${list[@]}
do
    if [ -e ~/.$dotfile ]; then
        echo "link to $dotfile"
        rm -rf ~/.$dotfile
    fi
    ln -s `pwd`/$dotfile ~/.$dotfile
done
