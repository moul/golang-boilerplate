# Project-specific variables
BINARIES ?=	hello


# Common variables
SOURCES :=	$(shell find . -name "*.go")
COMMANDS :=	$(shell go list ./... | grep -v /vendor/ | grep /cmd/)
PACKAGES :=	$(shell go list ./... | grep -v /vendor/ | grep -v /cmd/)
GOENV ?=	GO15VENDOREXPERIMENT=1
GO ?=		$(GOENV) go
GODEP ?=	$(GOENV) godep


all:	build


.PHONY: build
build:	$(BINARIES)


$(BINARIES):	$(SOURCES)
	$(GO) build -o $@ ./cmd/$@


.PHONY: test
test:
	$(GO) get -t .
	$(GO) test -v .


.PHONY: godep-save
godep-save:
	$(GODEP) save $(PACKAGES) $(COMMANDS)
