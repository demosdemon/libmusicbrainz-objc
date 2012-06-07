#!/usr/bin/env sh
TEMP_DIR=/tmp
COMMIT_HASH=`git rev-parse --short --verify HEAD`

sed "s/^\(PROJECT_NUMBER *= \)/\1${COMMIT_HASH}/" doxygen.config | /Applications/Doxygen.app/Contents/Resources/doxygen -
make --silent -C docs/html install
rsync -a --exclude ".git/" --delete docs/html/ ../libmusicbrainz-objc-docs/

rm -f $TEMP_DIR/loadDocSet.scpt
echo "tell application \"Xcode\"" >> $TEMP_DIR/loadDocSet.scpt
echo "load documentation set with path \"/Users/$USER/Library/Developer/Shared/Documentation/DocSets/org.musicbrainz.libmusicbrainz-objc.docset\"" >> $TEMP_DIR/loadDocSet.scpt
echo "end tell" >> $TEMP_DIR/loadDocSet.scpt
osascript $TEMP_DIR/loadDocSet.scpt

cd ../libmusicbrainz-objc-docs
git add -A
git commit -m "Update docs to commit ${COMMIT_HASH}"
cd ../libmusicbrainz-objc
exit 0
