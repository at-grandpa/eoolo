main:
	@echo ''
	@echo '--- eoolo.$(LANG) ---'
	@./scripts/eoolo.$(LANG)

js:
	@$(MAKE) main LANG=js

rb:
	@$(MAKE) main LANG=rb

py:
	@$(MAKE) main LANG=py

pl:
	@$(MAKE) main LANG=pl

scm:
	@$(MAKE) main LANG=scm

c:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@gcc ./scripts/eoolo.c
	@./a.out
	@rm -rf ./a.out

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
