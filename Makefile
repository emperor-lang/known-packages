#!/usr/bin/make

.DEFAULT_TARGET := all

all:;

install: /usr/share/emperor/packages.json

/usr/share/emperor/packages.json: ./packages.json /usr/share/emperor
	sudo install -m 644 $< $@

/usr/share/emperor:
	sudo mkdir -m 755 $@

%.json:;
