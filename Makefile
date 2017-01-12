REPOSITORY=eoolo
TAG=default

HOST_WORKDIR=$(PWD)
CONTAINER_WORKDIR=/root/eoolo

build:
	docker build --tag=$(REPOSITORY):$(TAG) .

run:
	docker run -v $(HOST_WORKDIR):$(CONTAINER_WORKDIR) -it $(REPOSITORY):$(TAG)

LANGUAGES=js php rb py pl d java lua nim go
.PHONY: $(LANGUAGES)

eoolo: $(LANGUAGES)

$(LANGUAGES):
	@echo ''
	@echo '--- eoolo.$@ ---'
	@./scripts/eoolo.$@

java:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@javac ./scripts/eoolo.java
	@cd scripts; java eoolo
	@rm -rf ./scripts/eoolo.class

nim:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@nim c -r ./scripts/eoolo.nim 2>/dev/null
	@rm -rf ./scripts/eoolo ./scripts/nimcache

go:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@go run ./scripts/eoolo.go
