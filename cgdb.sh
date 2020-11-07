#!/usr/bin/env sh

INSTALL_PATH=$HOME/opt/program/cgdb
EXEC=$INSTALL_PATH/bin/cgdb

###############################################################################
# update git repositofy
###############################################################################
git clone https://github.com/cgdb/cgdb
cd cgdb
sh autogen.sh
cd ..

###############################################################################
# build
###############################################################################
rm -vfr build
mkdir -p build
cd build
../cgdb/configure --prefix=$INSTALL_PATH
make -srj4
###############################################################################
# install
make install
echo "========================================================================"
$EXEC --version
echo "========================================================================"
