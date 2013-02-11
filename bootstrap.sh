#!/bin/sh
if [[ ! -f README.html ]]; then
	markdown2 README.md | tee README.html | lynx -stdin -dump >README.txt
fi
rm -f configure
autoreconf -fvim
if [[ ! -f Makefile ]]; then
	./configure
fi
make dist
rclean
mv *z ~/rpm/SOURCES
rpmbuild -ba syssys.spec
