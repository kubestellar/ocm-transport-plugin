.PHONY: build			##builds OCM based transport executable
build: 
	go build -o bin/ocm_transport cmd/main.go

.PHONY: help				##show this help message
help:
	@echo "usage: make [target]\n"; echo "options:"; \fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | sed 's/.PHONY:*//' | sed -e 's/^/  /'; echo "";