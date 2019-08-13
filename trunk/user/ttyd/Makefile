<<<<<<< HEAD
SRC_NAME=ttyd-1.0.0

THISDIR = $(shell pwd)

all: config_test
	$(MAKE) -C $(SRC_NAME)
=======
SRC_NAME=ttyd-1.4.0
SRC_URL=https://github.com/tsl0922/ttyd/archive/1.4.0.tar.gz

THISDIR = $(shell pwd)

all: download_test extract_test config_test
	$(MAKE) -j$(HOST_NCPU) -C $(SRC_NAME)/build

download_test:
	( if [ ! -f $(THISDIR)/$(SRC_NAME).tar.gz ]; then \
		wget -t5 --timeout=20 --no-check-certificate -O $(SRC_NAME).tar.gz $(SRC_URL); \
	fi )

extract_test:
	( if [ ! -d $(THISDIR)/$(SRC_NAME) ]; then \
		tar zxf $(SRC_NAME).tar.gz; \
	fi )
>>>>>>> f27d90fe49687f8c472df4d6035d554075e86a07

config_test:
	( if [ -f ./config_done ]; then \
		echo "the same configuration"; \
	else \
		make configure && touch config_done; \
	fi )

configure:
<<<<<<< HEAD
	( cd $(SRC_NAME) ; \
	cmake \
	-DCMAKE_INSTALL_PREFIX=$(STAGEDIR) \
	-DCMAKE_TOOLCHAIN_FILE=../cross-mipsel-linux.cmake \
	. \
	)

clean:
	if [ -f $(SRC_NAME)/Makefile ] ; then \
		$(MAKE) -C $(SRC_NAME) clean ; \
	fi ; \
	rm -f config_done

install:
	$(MAKE) -C $(SRC_NAME) install DESTDIR=""

romfs:
	$(ROMFSINST) $(THISDIR)/$(SRC_NAME)/ttyd /usr/bin/ttyd
=======
	( mkdir -p $(SRC_NAME)/build && cd $(SRC_NAME)/build ; \
	cmake -DCMAKE_TOOLCHAIN_FILE=../../cross-mipsel-linux.cmake .. \
	)

clean:
	rm -rf $(SRC_NAME)/build
	rm -f config_done

romfs:
	$(ROMFSINST) $(THISDIR)/$(SRC_NAME)/build/ttyd /usr/bin/ttyd
	$(ROMFSINST) $(THISDIR)/ttyd.sh /usr/bin/ttyd.sh
>>>>>>> f27d90fe49687f8c472df4d6035d554075e86a07
