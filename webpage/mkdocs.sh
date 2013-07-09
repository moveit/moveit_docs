#!/bin/sh
echo "starting mkdocs ..."
cd $1

for f in `ls md_doc_dox_*`; do echo $f && mv $f `echo $f | cut -c12-1000`; done
rm *8md_source.html

cd -
echo "mkdocs done!"


