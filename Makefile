UUID = transmission-daemon@patapon.info

ifeq ($(strip $(DESTDIR)),)
	INSTALLBASE = $(HOME)/.local/share/gnome-shell/extensions
else
	INSTALLBASE = $(DESTDIR)/usr/share/gnome-shell/extensions
endif

VERSION = $(shell git rev-parse HEAD)

.PHONY: error clean build bump compress dist install uninstall

error:
	@echo "No target specified. Available targets: clean dist install uninstall"

clean:
	rm -rf build dist

build: clean
	mkdir -p build
	cp -r src/* build/
	glib-compile-schemas ./build/schemas/

bump:
	sed -i 's/"version": .*/"version": "$(VERSION)",/'  ./build/metadata.json;

compress: bump
	mkdir -p dist
	(cd build; zip -qr "../dist/$(UUID).zip" .)


dist: build compress

install: dist
	unzip "dist/$(UUID).zip" -d "$(INSTALLBASE)/$(UUID)"

uninstall:
	rm -rf "$(INSTALLBASE)/$(UUID)"
