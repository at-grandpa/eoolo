main:
	@echo ''
	@echo '--- sce.$(LANG) ---'
	@./scripts/sce.$(LANG)

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
	@echo '--- sce.$@ ---'
	@gcc ./scripts/sce.$@
	@./a.out
	@rm -rf ./a.out

hs:
	@$(MAKE) main LANG=$@

d:
	@$(MAKE) main LANG=$@

rs:
	@echo ''
	@echo '--- sce.$@ ---'
	@rustc ./scripts/sce.$@
	@./sce
	@rm -rf ./sce

cpp:
	@echo ''
	@echo '--- sce.$@ ---'
	@g++ ./scripts/sce.$@
	@./a.out
	@rm -rf ./a.out

go:
	@echo ''
	@echo '--- sce.$@ ---'
	@go run ./scripts/sce.$@

java:
	@echo ''
	@echo '--- sce.$@ ---'
	@javac ./scripts/sce.$@
	@cd scripts; java sce
	@rm -rf ./scripts/sce.class

dart:
	@$(MAKE) main LANG=$@

f:
	@echo ''
	@echo '--- sce.$@ ---'
	@gfortran -o sce scripts/sce.f
	@./sce
	@rm -rf sce

clj:
	@echo ''
	@echo '--- sce.$@ ---'
	@java -cp ~/.clojure/clojure-1.8.0/clojure-1.8.0.jar clojure.main scripts/sce.clj

groovy:
	@$(MAKE) main LANG=$@

nim:
	@echo ''
	@echo '--- sce.$@ ---'
	@nim c -r ./scripts/sce.$@ 2>/dev/null
	@rm -rf ./scripts/sce ./scripts/nimcache

