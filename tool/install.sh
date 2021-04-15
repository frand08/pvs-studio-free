#!/bin/sh
# 2006-2008 (c) Viva64.com Team
# 2008-2020 (c) OOO "Program Verification Systems"
# 2020-2021 (c) PVS-Studio LLC
#

PREFIX="$1"
if [ -z "$1" ]; then
  case "$OSTYPE" in
    darwin*)  PREFIX="/usr/local" ;; 
    *)        PREFIX="/usr" ;;
  esac
fi

mkdir -p "${PREFIX}/bin"
install -m755 ./bin/pvs-studio "$PREFIX/bin"
install -m755 ./bin/plog-converter "$PREFIX/bin"
install -m755 ./bin/pvs-studio-analyzer "$PREFIX/bin"

mkdir -p "${PREFIX}/etc/bash_completion.d"
cp ./etc/bash_completion.d/pvs-studio.sh "${PREFIX}/etc/bash_completion.d"

