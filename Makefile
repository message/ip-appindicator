DESTDIR=/usr

all:

install:
	mkdir ${DESTDIR}/lib/indicator-ip
	cp indicator-ip ${DESTDIR}/lib/indicator-ip
	cp -R flags ${DESTDIR}/lib/indicator-ip
	ln -s ${DESTDIR}/lib/indicator-ip/indicator-ip ${DESTDIR}/bin/indicator-ip
	cp indicator-ip.desktop ${DESTDIR}/share/applications/
	
clean:
	rm -rf ../*.xz ../*.deb ../*.tar.gz ../*.changes ../*.dsc ../*.upload ../*.build ../*.cdbs-config_list
	
uninstall:
	rm -rf ${DESTDIR}/lib/indicator-ip
	rm ${DESTDIR}/bin/indicator-ip
	rm ${DESTDIR}/share/applications/indicator-ip.desktop

.PHONY: clean install all
