#! /usr/bin/env bash

set -e -o pipefail

if [ $# -eq 0 ]; then
	s=`basename $0`
	echo "usage: $s word"
	exit 1
fi

xdg-open "http://www.conjugation-fr.com/conjugate.php?verb=$*"

