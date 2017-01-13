REPOSITORY=eoolo
TAG=default

HOST_WORKDIR=$(PWD)
CONTAINER_WORKDIR=/root/eoolo

build:
	docker build --tag=$(REPOSITORY):$(TAG) .

run:
	docker run -v $(HOST_WORKDIR):$(CONTAINER_WORKDIR) -it $(REPOSITORY):$(TAG)

include languages.mk
include runs.mk

eoolo: $(LANGUAGES)

