#!/usr/bin/make

.DEFAULT_TARGET := all

all:;

install: /usr/share/emperor/packages.json

/usr/share/emperor/packages.json: ./packages.json
	sudo install -m 644 $< $@

%.json:;