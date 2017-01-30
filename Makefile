REPOSITORY=sce
TAG=default

HOST_WORKDIR=$(PWD)
CONTAINER_WORKDIR=/root/sce

build:
	docker build --tag=$(REPOSITORY):$(TAG) .

run:
	docker run -v $(HOST_WORKDIR):$(CONTAINER_WORKDIR) -i $(REPOSITORY):$(TAG) make sce --no-print-directory

in:
	docker run -v $(HOST_WORKDIR):$(CONTAINER_WORKDIR) -it $(REPOSITORY):$(TAG)

include languages.mk
include runs.mk

sce:
	$(MAKE) all_language --no-print-directory

all_language: $(LANGUAGES)

