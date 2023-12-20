IOPRP_IMAGE ?= IOPRP.IMG
ROMIMG = romimg

$(IOPRP_IMAGE): $(IOPRP_CONTENTS)
ifeq (_$(IOPRP_CONTENTS)_,__)
	$(error cannot create IOPRP Image without source files. specify them on the IOPRP_CONTENTS variable)
endif
	$(ROMIMG) -c $@ $(IOPRP_CONTENTS)
