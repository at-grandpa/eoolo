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

d:
	@$(MAKE) main LANG=$@

rs:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@rustc ./scripts/eoolo.$@
	@./eoolo
	@rm -rf ./eoolo

cpp:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@g++ ./scripts/eoolo.$@
	@./a.out
	@rm -rf ./a.out

go:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@go run ./scripts/eoolo.$@

java:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@javac ./scripts/eoolo.$@
	@cd scripts; java eoolo
	@rm -rf ./scripts/eoolo.class

dart:
	@$(MAKE) main LANG=$@

f:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@gfortran -o eoolo scripts/eoolo.f
	@./eoolo
	@rm -rf eoolo

clj:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@java -cp ~/.clojure/clojure-1.8.0/clojure-1.8.0.jar clojure.main scripts/eoolo.clj

nim:
	@echo ''
	@echo '--- eoolo.$@ ---'
	@nim c -r ./scripts/eoolo.$@ 2>/dev/null
	@rm -rf ./scripts/eoolo ./scripts/nimcache

