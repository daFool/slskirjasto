#!/bin/sh
if [ -z "$ROOTPATH" ]; then
    echo "Rootpath not set, perhaps local.sh was not run?"
    exit -1
fi
docs="$ROOTPATH/docs"
if [ ! -d "$docs" ]; then
    mkdir $docs
fi

build="$ROOTPATH/build"
if [ ! -d "$build" ]; then
    mkdir $build
fi

cd $ROOTPATH
phpdox

phpdoc="$ROOTPATH/phpdocs"
if [ ! -d "$phpdoc" ]; then
   mkdir $phpdoc
fi
phpdoc -d . -t $phpdoc -i docs,phpdocs,build,web/vendor/*
