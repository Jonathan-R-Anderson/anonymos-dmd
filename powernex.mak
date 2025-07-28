INSTALL_DIR=$(PWD)/../install
.PHONY: all clean install

all:
	$(QUIET)$(MAKE) -C compiler/src -f powernex.mak all

clean:
	$(QUIET)$(MAKE) -C compiler/src -f powernex.mak clean

install: all
	$(MAKE) INSTALL_DIR=$(INSTALL_DIR) -C compiler/src -f powernex.mak install

.DELETE_ON_ERROR: # GNU Make directive (delete output files on error)
