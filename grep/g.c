#! /bin/bash

grep -n --color=auto "$*" $(\
	find . -iname '*.c'; \
	find . -iname '*.cpp'; \
	find . -iname '*.h'; \
	find . -iname '*.hpp'; \
	)
