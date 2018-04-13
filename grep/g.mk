#! /bin/bash

grep -n --color=auto "$*" $(\
	find . -iname 'Makefile'; \
	)
