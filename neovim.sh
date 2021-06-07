#!/usr/bin/env bash

git clone https://github.com/neovim/neovim.git

cd neovim

make                                            \
    CMAKE_INSTALL_PREFIX=$HOME/opt/program/nvim \
    CMAKE_BUILD_TYPE=MinSizeRel

make -j install
