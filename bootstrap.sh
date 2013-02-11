#!/bin/sh
rm -f configure
autoreconf -fvim
if [[ ! -f Makefile ]]; then
	./configure
fi
make dist
rclean
mv *z ~/rpm/SOURCES
rpmbuild -ba syssys.spec
