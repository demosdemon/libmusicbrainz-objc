#!/usr/bin/env sh
TEMP_DIR=/tmp

/Applications/Doxygen.app/Contents/Resources/doxygen doxygen.config
make --silent -C docs/html install
make --silent -C docs/latex
rsync -a docs/html/ ../libmusicbrainz-objc-docs/

rm -f $TEMP_DIR/loadDocSet.scpt
echo "tell application \"Xcode\"" >> $TEMP_DIR/loadDocSet.scpt
echo "load documentation set with path \"/Users/$USER/Library/Developer/Shared/Documentation/DocSets/org.musicbrainz.libmusicbrainz-objc.docset\"" >> $TEMP_DIR/loadDocSet.scpt
echo "end tell" >> $TEMP_DIR/loadDocSet.scpt
osascript $TEMP_DIR/loadDocSet.scpt

exit 0
