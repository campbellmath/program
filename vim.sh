#!/usr/bin/env sh

INSTALL_PATH=$HOME/opt/program/vim
EXEC=$INSTALL_PATH/bin/vim

###############################################################################
# update git repositofy
###############################################################################
git clone https://github.com/vim/vim

###############################################################################
# build
###############################################################################
cd vim
export CFLAGS=-O3
./configure                    \
    --prefix=$INSTALL_PATH     \
    --disable-gpm              \
    --enable-perlinterp=yes    \
    --enable-python3interp=yes \
    --enable-cscope            \
    --with-features=huge       \
    --enable-multibyte         \
    --enable-fontset           \
    --enable-gui               \
    --enable-gtk2-check
make -srj4
###############################################################################
# install
make install
echo "========================================================================"
$EXEC --version
echo "========================================================================"
