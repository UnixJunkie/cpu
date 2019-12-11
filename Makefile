.PHONY: build clean edit install uninstall reinstall

build:
	autoconf
	autoheader
	./configure
	dune build @install -j `getconf _NPROCESSORS_ONLN`

clean:
	dune clean

edit:
	emacs src/*.ml &

install: build
	dune install

uninstall:
	dune uninstall

reinstall: uninstall install
