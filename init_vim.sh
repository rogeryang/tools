#!/bin/sh

_home=~/.vim/pack/myplugins/start

mkdir -p $_home

cd $_home

git clone https://github.com/prabirshrestha/vim-lsp.git
git clone https://github.com/prabirshrestha/async.vim.git

mkdir ~/opt
cd ~/opt
git clone https://github.com/cquery-project/cquery --single-branch --depth=1
cd cquery
git submodule update --init && ./waf configure build && sudo ./waf install

mkdir -p ~/.cquery/cache

