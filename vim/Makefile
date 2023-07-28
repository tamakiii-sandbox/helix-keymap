.PHONY: help setup teardown

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	.vim/autoload/plug.vim

teardown:
	rm -rf .vim/autoload

.vim/autoload/plug.vim: .vim/autoload
	curl -sfLo $@ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

.vim/autoload:
	mkdir -p $@
