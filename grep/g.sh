#! /bin/bash

grep -n --color=auto "$*" $(\
	find . -iname '*.sh'; \
	find . -iname '*.csh'; \
	)
