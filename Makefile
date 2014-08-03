SHELL = /bin/sh
INSTALL = /usr/bin/install
INSTALL_PROGRAM = $(INSTALL)
INSTALL_DATA = $(INSTALL) -m 644
INSTALL_DIR = $(INSTALL) -d

DIRS = collab \
		conemail \
		sesame \
		ssh-xdg
BUILDDIRS = $(DIRS:%=build-%)
INSTALLDIRS = $(DIRS:%=install-%)
HOMINGDIRS = $(DIRS:%=install_home-%)
UNINSTALLDIRS = $(DIRS:%=uninstall-%)
EVICTDIRS = $(DIRS:%=uninstall_home-%)
CLEANDIRS = $(DIRS:%=clean-%)
TESTDIRS = $(DIRS:%=test-%)

default: help

all: $(BUILDDIRS)
$(DIRS): $(BUILDDIRS)

build: $(BUILDDIRS)
$(BUILDDIRS):
	@$(MAKE) -C $(@:build-%=%)

install: $(INSTALLDIRS) build
$(INSTALLDIRS):
	@$(MAKE) -C $(@:install-%=%) install

# underscore instead of hyphen to prevent target collisions.
install_home: $(HOMINGDIRS) build
$(HOMINGDIRS):
	@$(MAKE) -C $(@:install_home-%=%) install_home

uninstall: $(UNINSTALLDIRS)
$(UNINSTALLDIRS):
	@$(MAKE) -C $(@:uninstall-%=%) uninstall

uninstall_home: $(EVICTDIRS)
$(EVICTDIRS):
	@$(MAKE) -C $(@:uninstall_home-%=%) uninstall_home

test: $(TESTDIRS) build
$(TESTDIRS): 
	@$(MAKE) -C $(@:test-%=%) test

clean: $(CLEANDIRS)
$(CLEANDIRS): 
	@$(MAKE) -C $(@:clean-%=%) clean

help:
	@echo "This is the parent Makefile to operate on all projects"
	@echo "at once"
	@echo "Either run a target on all projects or just a single one by"
	@echo "postfixing the target name with -PROJECT. PROJECT is one of"
	@echo ""
	@echo $(DIRS)

.PHONY: subdirs $(DIRS)
.PHONY: subdirs $(BUILDDIRS)
.PHONY: subdirs $(INSTALLDIRS)
.PHONY: subdirs $(UNINSTALLDIRS)
.PHONY: subdirs $(HOMINGDIRS)
.PHONY: subdirs $(EVICTDIRS)
.PHONY: subdirs $(CLEANDIRS)
.PHONY: subdirs $(TESTDIRS)
.PHONY: install install_home uninstall uninstall_home 
.PHONY: default all build clean test