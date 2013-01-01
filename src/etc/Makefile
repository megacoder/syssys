TARGETS=all check clean clobber distclean install uninstall
TARGET=all

PREFIX=${DESTDIR}/opt
ETCDIR=${PREFIX}/etc
SUBDIRS=

INSTALL=install

.PHONY: ${TARGETS} ${SUBDIRS}

all::	syssys.conf

${TARGETS}::

clobber distclean:: clean

install:: syssys.conf
	${INSTALL} -D -m 0 644 syssys.conf ${ETCDIR}/syssys.conf

uninstall::
	${RM} ${ETCDIR}/syssys.conf

ifneq	(,${SUBDIRS})
${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}
${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
endif
