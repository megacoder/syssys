sbin_SCRIPTS=syssys

sysconf_DATA=syssys.conf

EXTRA_DIST = syssys syssys.conf

install-data-hook:
	${INSTALL} -D -m 0644 syssys.conf ${DESTDIR}${sysconfdir}/syssys.conf
