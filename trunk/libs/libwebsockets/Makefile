<<<<<<< HEAD
SRC_NAME=libwebsockets-2.0.3

all: config_test
	$(MAKE) -C $(SRC_NAME)
=======
SRC_NAME=libwebsockets-2.4.2
SRC_URL=https://github.com/warmcat/libwebsockets/archive/v2.4.2.tar.gz

all: download_test extract_test config_test
	$(MAKE) -j$(HOST_NCPU) -C $(SRC_NAME)/build

download_test:
	( if [ ! -f $(SRC_NAME).tar.gz ]; then \
		wget -t5 --timeout=20 --no-check-certificate -O $(SRC_NAME).tar.gz $(SRC_URL); \
	fi )

extract_test:
	( if [ ! -d $(SRC_NAME) ]; then \
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
=======
	( mkdir -p $(SRC_NAME)/build && cd $(SRC_NAME)/build ; \
	cmake \
	-DCMAKE_INSTALL_PREFIX=$(STAGEDIR) \
	-DCMAKE_TOOLCHAIN_FILE=../../cross-mipsel-linux.cmake \
	-DLWS_WITHOUT_TEST_ECHO=ON \
	-DLWS_WITHOUT_TEST_SERVER=ON \
	-DLWS_WITHOUT_TEST_PING=ON \
	-DLWS_WITHOUT_CLIENT=ON \
	-DLWS_WITHOUT_TEST_FRAGGLE=ON \
	-DLWS_WITHOUT_TEST_SERVER_EXTPOLL=ON \
	.. \
	)

clean:
	rm -rf $(SRC_NAME)/build
	rm -f config_done

install:
	$(MAKE) -C $(SRC_NAME)/build install DESTDIR=""
>>>>>>> f27d90fe49687f8c472df4d6035d554075e86a07

romfs:
	cp -fP $(DESTDIR)/lib/libwebsockets.so* $(ROMFSDIR)/lib
