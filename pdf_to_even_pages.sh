#!/bin/bash

#get the number of pages
numberofpages=`pdftk "$1" dump_data | sed -e '/NumberOfPages/!d;s/NumberOfPages: //'`
echo -n "$1" 'has' $numberofpages 'pages, '

if [ ! -f /tmp/blank.pdf ]; then
    echo 'Creating blank pdf file ...'
    echo "" | ps2pdf -sPAPERSIZE=a4 - /tmp/blank.pdf
fi

uneven=$(($numberofpages % 2))
if [ $uneven == 1 ]
then
    echo 'which is uneven'
    pdftk "$1" /tmp/blank.pdf cat output "output_$1"
    echo "$1" 'processed.'
else
    echo 'which is even'
fi
