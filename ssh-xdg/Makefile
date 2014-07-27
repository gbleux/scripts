SHELL = /bin/sh
INSTALL = /usr/bin/install
INSTALL_PROGRAM = $(INSTALL) -m 755
INSTALL_DATA = $(INSTALL) -m 644
INSTALL_DIR = $(INSTALL) -d
LN = /usr/bin/ln
LN_S = $(LN) -s

bindir = /usr/local/bin
homebindir = $(HOME)/bin

bin_PROGRAMS = ssh-xdg
bin_LINKS = scp-xdg sftp-xdg slogin-xdg

INSTALLFILES = $(bin_PROGRAMS:%=install-%)
LINKFILES = $(bin_LINKS:%=link-%)
UNINSTALLFILES = $(bin_PROGRAMS:%=uninstall-%) \
				 $(bin_LINKS:%=uninstall-%)
HOMINGFILES = $(bin_PROGRAMS:%=install_home-%)
HOMELINKFILES = $(bin_LINKS:%=link_home-%)
EVICTFILES = $(bin_PROGRAMS:%=uninstall_home-%) \
			 $(bin_LINKS:%=uninstall_home-%)

all: build
build: $(bin_PROGRAMS)

# TODO: find a way to reduce $(LINKFILES) target dependencies to
# what is actually needed. e.g. link-slogin-xdg -> install-ssh-xdg
# currently each linker target requires the installation of all
# programs

install: $(INSTALLFILES) $(LINKFILES)
$(INSTALLFILES): build
	$(INSTALL_PROGRAM) $(@:install-%=%) $(DESTDIR)$(bindir)/
$(LINKFILES): $(INSTALLFILES)
	$(LN_S) --relative $(DESTDIR)$(bindir)/ssh-xdg $(DESTDIR)$(bindir)/$(@:link-%=%)

install_home: $(HOMINGFILES) $(HOMELINKFILES)
$(HOMINGFILES): build
	$(INSTALL_DIR) $(homebindir)/
	$(INSTALL_PROGRAM) $(@:install_home-%=%) $(homebindir)/
$(HOMELINKFILES): $(HOMINGFILES)
	$(LN_S) --relative $(homebindir)/ssh-xdg $(homebindir)/$(@:link_home-%=%)

uninstall: $(UNINSTALLFILES)
$(UNINSTALLFILES):
	$(RM) $(DESTDIR)$(bindir)/$(@:uninstall-%=%)

uninstall_home: $(EVICTFILES)
$(EVICTFILES):
	$(RM) $(homebindir)/$(@:uninstall_home-%=%)

test: build

clean:

.PHONY: $(INSTALLFILES) $(LINKFILES) $(UNINSTALLFILES)
.PHONY: $(HOMINGFILES) $(HOMELINKFILES) $(EVICTFILES)
.PHONY: install install_home uninstall uninstall_home 
.PHONY: all build clean test