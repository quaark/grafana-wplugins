GRAFANA_VERSION ?= 7.2.0
IGUAZIO_REPOSITORY ?= gcr.io/iguazio/


.PHONY: all
all: build
	@echo Done.

.PHONY: build
build: grafana-wplugins
	@echo Done.

.PHONY: grafana-wplugins
grafana-wplugins:
	docker build \
	--file ./Dockerfile \
	--tag $(IGUAZIO_REPOSITORY)grafana-wplugins:$(GRAFANA_VERSION) \
	--build-arg GRAFANA_VERSION=$(GRAFANA_VERSION) \
	.

