#!/bin/bash
set -x

USAGE='copy_docs_by_dav_mount.sh <docdir>'
DAVURL='https://kforge.ros.org/moveit/dav'
DESTPATH='www/docs/moveit/536'

if [[ $# -lt 1 ]]; then
  echo $USAGE
  exit 1
fi

built_docs=$1

tmpd=`mktemp -d`
sudo mount -t davfs $DAVURL $tmpd -o uid=$USER
mkdir -p $tmpd/$DESTPATH
rm -rf $tmpd/$DESTPATH/*
cp -ar $built_docs $tmpd/$DESTPATH
sudo umount $tmpd
