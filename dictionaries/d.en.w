#! /usr/bin/env bash

set -e -o pipefail


if [ $# -eq 0 ]; then
	s=`basename $0`
	echo "usage: $s word"
	exit 1
fi

q=`echo $* | sed 's/ /-/g'`

xdg-open "https://www.merriam-webster.com/dictionary/$*"

