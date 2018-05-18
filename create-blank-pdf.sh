#!/bin/sh

convert xc:none -page A4 "$1"
# echo "" | ps2pdf -sPAPERSIZE=a4 - "$1"
