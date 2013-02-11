SUBDIRS	=src

EXTRA_DIST = README.md

README.txt README.html:: README.md
	markdown2 README.md | tee README.html | lynx -stdin -dump >README.txt
