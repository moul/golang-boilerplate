# Project-specific variables
COMMANDS ?=	hello


# Common variables
SOURCES :=	$(shell find . -name "*.go")
GOENV ?=	GO15VENDOREXPERIMENT=1
GO ?=		$(GOENV) go
GODEP ?=	$(GOENV) godep


all:	build


.PHONY: build
build:	$(COMMANDS)


$(COMMANDS):	$(SOURCES)
	$(GO) build -o $@ ./cmd/$@


.PHONY: test
test:
	$(GO) get -t .
	$(GO) test -v .
