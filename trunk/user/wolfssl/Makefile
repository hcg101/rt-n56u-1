SRC_NAME=wolfssl2

CFLAGS+=$(COPT) -ffunction-sections -fdata-sections
LDFLAGS += -Wl,--gc-sections
#export PATH="$HOME/bin:$PATH:/opt/rt-n56u/toolchain-mipsel/toolchain-3.4.x/bin:/opt/rt-n56u/toolchain-mipsel/toolchain-3.4.x/mipsel-linux-uclibc/bin"
#CC=mipsel-linux-uclibc-

THISDIR = $(shell pwd)

all: config_test
	$(MAKE) -C $(SRC_NAME) && \
	$(MAKE) -C $(SRC_NAME) install DESTDIR=$(THISDIR)/install

config_test:
	( if [ -f ./config_done ]; then \
		echo "the same configuration"; \
	else \
		make configure && touch config_done; \
	fi )

configure:
	( cd $(SRC_NAME) ; \
	HAVE_CXX=yes \
	PKG_CONFIG_PATH=$(STAGEDIR)/lib/pkgconfig \
	#./autogen.sh  \
	./configure --prefix=/usr --host=mipsel-linux-uclibc --build=$(HOST_BUILD) ; \
	)
clean:
	if [ -f $(SRC_NAME)/Makefile ] ; then \
		$(MAKE) -C $(SRC_NAME) distclean ; \
	fi ; \
	rm -f config_done
	rm -rf install

romfs:
	mkdir -p $(INSTALLDIR)/usr/lib/pkgconfig
	#mkdir -p $(INSTALLDIR)/etc
	$(ROMFSINST) $(THISDIR)/install/usr/bin/wolfssl-config	/usr/bin/wolfssl-configg
	cp -rf $(THISDIR)/install/usr/include	$(INSTALLDIR)/usr
	cp -rf $(THISDIR)/install/usr/share	$(INSTALLDIR)/usr
	$(ROMFSINST) $(THISDIR)/install/usr/lib/libwolfssl.la	/usr/lib/libwolfssl.la
	$(ROMFSINST) $(THISDIR)/install/usr/lib/libwolfssl.so	/usr/lib/libwolfssl.so
	$(ROMFSINST) $(THISDIR)/install/usr/lib/libwolfssl.so.3	/usr/lib/libwolfssl.so.3
	$(ROMFSINST) $(THISDIR)/install/usr/lib/libwolfssl.so.3.5.0	/usr/lib/libwolfssl.so.3.5.0
	$(ROMFSINST) $(THISDIR)/install/usr/lib/pkgconfig/wolfssl.pc	/usr/lib/pkgconfig/wolfssl.pc
	
	
		
