main:
	@echo ''
	@echo '--- eoolo.$(LANG) ---'
	@./scripts/eoolo.$(LANG)

js:
	@$(MAKE) main LANG=$@

rb:
	@$(MAKE) main LANG=$@

py:
	@$(MAKE) main LANG=$@

pl:
	@$(MAKE) main LANG=$@

scm:
	@$(MAKE) main LANG=$@

c:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@gcc ./scripts/eoolo.$@
	@./a.out
	@rm -rf ./a.out

hs:
	@$(MAKE) main LANG=$@

java:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@javac ./scripts/eoolo.$@
	@cd scripts; java eoolo
	@rm -rf ./scripts/eoolo.class

nim:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@nim c -r ./scripts/eoolo.$@ 2>/dev/null
	@rm -rf ./scripts/eoolo ./scripts/nimcache

go:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@go run ./scripts/eoolo.$@
