#! /bin/bash

grep -n --color=auto "$*" $(\
	find . -iname '*.py'; \
	find . -iname '*.snake'; \
	find . -iname 'Snakefile'; \
	)
