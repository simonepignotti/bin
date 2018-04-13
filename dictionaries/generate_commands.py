#! /usr/bin/env python3

import argparse
import os
import sys
import stat

g_lang_codes = {
	"cz": "cs",
	"en": "en",
	"fr": "fr",
	"de": "de",
}

l_lang_codes = {
	"en": "Anglicko",
	"fr": "Francouzsko",
	"de": "Nemecko",
}


langs = g_lang_codes.keys()

template_transl="""#! /usr/bin/env bash

set -e -o pipefail


if [ $# -eq 0 ]; then
	s=`basename $0`
	echo "usage: $s phrase"
	exit 1
fi

q=`echo "$*" | sed 's/ /\+/g'`
r=`echo "$*" | sed 's/ /_/g'`
"""

def chmodx(fn):
	st = os.stat(fn)
	os.chmod(fn, st.st_mode | stat.S_IEXEC)


def gtrans(fn,fr,to):
	with open(fn,"w") as f:
		f.write('{te}\nxdg-open "https://translate.google.com/#{fr}/{to}/$q"'.format(
			te=template_transl,
			fr=g_lang_codes[fr],
			to=g_lang_codes[to],
		))
	chmodx(fn)

def ltrans(fn,fr):
	with open(fn,"w") as f:
		f.write('{te}\nxdg-open "https://slovniky.lingea.cz/{fr}-{to}/$q"'.format(
			te=template_transl,
			fr=l_lang_codes[fr],
			to="cesky",
		))
	chmodx(fn)

def wikipedia(fn,fr):
	with open(fn,"w") as f:
		f.write('{te}\nxdg-open "https://{fr}.wikipedia.org/w/index.php?search=$r"'.format(
			te=template_transl,
			fr=g_lang_codes[fr],
		))
	chmodx(fn)

for fr in langs:
	wikipedia("w.{}".format(fr),fr)
	for to in langs:
		if fr==to:
			continue
		gtrans("d.{}{}.g".format(fr,to),fr,to)
		os.symlink("d.{}{}.g".format(fr,to),"d.{}{}".format(fr,to))
		if to=="cz":
			ltrans("d.{}{}.l".format(fr,"cz"),fr)
			ltrans("d.{}{}.l".format("cz",fr),fr)
