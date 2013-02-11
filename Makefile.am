SUBDIRS	=src

EXTRA_DIST=README.html README.md README.txt TODO LICENSE

README.txt README.html:: README.md
	markdown2 README.md | tee README.html | lynx -stdin -dump >README.txt
