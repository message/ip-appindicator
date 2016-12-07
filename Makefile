DESTDIR=/usr

all:

install:
	mkdir ${DESTDIR}/lib/ip-appindicator
	cp ip-appindicator ${DESTDIR}/lib/ip-appindicator
	cp -R flags ${DESTDIR}/lib/ip-appindicator
	ln -s ${DESTDIR}/lib/ip-appindicator/ip-appindicator ${DESTDIR}/bin/ip-appindicator
	cp ip-appindicator.desktop ${DESTDIR}/share/applications/
	
clean:
	rm -rf ../*.xz ../*.deb ../*.tar.gz ../*.changes ../*.dsc ../*.upload ../*.build ../*.cdbs-config_list
	
uninstall:
	rm -rf ${DESTDIR}/lib/ip-appindicator
	rm ${DESTDIR}/bin/ip-appindicator
	rm ${DESTDIR}/share/applications/ip-appindicator.desktop

.PHONY: clean install all
