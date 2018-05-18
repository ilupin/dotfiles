#!/bin/bash
# Time-stamp: <2017-06-15 12:51 Thursday liuhui>

case $1 in
    emacs)
        REXP="Emacs -x"
	CMD=""
        ;;
    firefox)
        REXP="Firefox -x"
        CMD=""
        ;;
    qterm)
        REXP="Fqterm"
        CMD="fqterm"
        ;;
    terminal)
        REXP="Gnome-terminal -x"
        CMD="/usr/bin/gnome-terminal"
        ;;
    jabref)
        REXP="jabref -x"
        CMD="jabref"
        ;;
    konqueror)
        REXP="konqueror -x"
        CMD="konqueror"
        ;;
    *)
        exit
        ;;
esac

wmctrl -a $REXP && exit
if [ "$CMD" != ""]; then
    exec $CMD &
fi
