#! /usr/bin/env bash

set -e -o pipefail


if [ $# -eq 0 ]; then
	s=`basename $0`
	echo "usage: $s phrase"
	exit 1
fi

q=`echo "$*" | sed 's/ /\+/g'`
r=`echo "$*" | sed 's/ /_/g'`

xdg-open "https://translate.google.com/#cs/en/$q"