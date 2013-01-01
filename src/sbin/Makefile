TARGETS=all check clean clobber distclean install uninstall
TARGET=all

PREFIX=${DESTDIR}/opt
SBINDIR=${PREFIX}/sbin
SUBDIRS=

INSTALL=install

.PHONY: ${TARGETS} ${SUBDIRS}

all::	syssys

${TARGETS}::

clobber distclean:: clean

check::	syssys
	./syssys ${ARGS}

install:: syssys
	${INSTALL} -D syssys ${SBINDIR}/syssys

uninstall::
	${RM} ${SBINDIR}/syssys

ifneq	(,${SUBDIRS})
${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}
${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
endif
