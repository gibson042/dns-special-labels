XML2RFC=xml2rfc

-include user.mk

all: draft-hoffman-dns-special-labels.txt

%.txt: %.xml
	$(XML2RFC) $<

%.xml: %.mkd
	kramdown-rfc2629 $< >$@.new
	mv $@.new $@
