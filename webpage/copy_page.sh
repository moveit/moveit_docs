#!/bin/sh

DEST=/var/www/moveit/doxygen/
SOURCE=webpage

echo "Exporting MoveIt! documentation to $DEST ..."

rm -rf ${DEST}
# copy all assets to the ASSET_DIR directory
mkdir -p ${DEST}
for f in generated/*.html; do
    sed 's/="..\//=".\//g' $f > ${DEST}/`basename $f`
done
cp -r `ls -1 --hide=generated --hide=index.html` generated/*.png generated/*.map generated/search ${DEST}
chmod -R g+w ${DEST}

echo "Done."
