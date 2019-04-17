
# Copyright (C) 2000-2018 The Xastir Group


bin_PROGRAMS = callpass

callpass_SOURCES = callpass.c

callpass_LINK=$(CC) $(AM_CFLAGS) $(CFLAGS) $(LDFLAGS) -o $@

EXTRA_DIST = config.guess config.sub install-sh \
        missing placeholder \
        bootstrap.sh INSTALL callpass.1 \
        COPYING

MAINTAINERCLEANFILES = configure aclocal.m4 Makefile.in Makefile \
        config.guess config.sub install-sh missing mkinstalldirs \
        xastir.spec xastir-min.spec

docdir=${prefix}/share/doc/xastir
doc_DATA=ChangeLog \
        COPYING INSTALL

# It'd be nice to remove the directory and contents at
# "${pkgdatadir}/doc" then install a symlink called "doc" there pointing
# to "${prefix}/share/doc/xastir/".  The new location for the
# documentation is FHS compliant.

install-exec-hook:
	-rm -rf $(DESTDIR)${pkgdatadir}/doc

install-data-hook:
 
#mandir=${prefix}/share/man
#man_MANS=callpass.1

ChangeLog::


