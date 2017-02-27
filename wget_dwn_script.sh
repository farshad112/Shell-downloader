#!/bin/sh

######################################################################
################# Shell downloader using wget ########################
## Author: Farshad
## Usages: Downloads all files from a web pages except html pages
##		   User has to pass the websites link as command line argument
##         By default files will be saved in the directory where the
##		   script is located.
## Example: wget_dwn_script https://examplesite.com/ /apps/mnt/downloads/
######################################################################
url=$1;
shift;
destdir=$1;
shift;
if [[ -z $destdir ]] then
destdir=.
fi
wget -A pdf,v -m -p -E -k -K -np $url -P $destdir;
