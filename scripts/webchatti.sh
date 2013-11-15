#!/bin/bash

BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE="$(dirname "$BASE")"
PWD=`pwd`
WORK=chattipackage
URL="https://github.com/roanuz/webchatti"
TAR="$URL/tarball/master"

mkdir $WORK
echo "Downloading $TAR"
curl -L $TAR | tar zx -C $WORK --strip-components 1
# tar -C $WORK --strip-components 1 -zxf roanuz-webchatti-9ecea1f.tar.gz
mv $WORK/chatties/default/* .
rm -rf $WORK
python -m SimpleHTTPServer

echo "========"
echo "Thanks for using Web Chatti!"
echo "========"