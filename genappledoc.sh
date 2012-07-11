#!/usr/bin/env sh

git merge -s recursive -X theirs master

DIRECTORY=`dirname $0`
OUTPUT="docs"
VERSION=`git rev-parse --verify master`
PUBLISH_URL="http://demosdemon.github.com/libmusicbrainz-objc/$OUTPUT/publish"

/usr/bin/env appledoc \
  --create-html \
  --create-docset \
  --project-name "libmusicbrainz-objc" \
  --project-company "MetaBrainz" \
  --project-version "$VERSION" \
  --company-id "org.metabrainz" \
  --output "$DIRECTORY/$OUTPUT" \
  --keep-undocumented-objects \
  --keep-undocumented-members \
  --search-undocumented-doc \
  --docset-feed-url "$PUBLISH_URL/%DOCSETATOMFILENAME" \
  --docset-package-url "$PUBLISH_URL/%DOCSETPACKAGEFILENAME" \
  --publish-docset \
  --keep-intermediate-files \
  --logformat "xcode" \
  --verbose 2 \
  --no-warn-unknown-directive \
  --no-warn-invalid-crossref\
  "$DIRECTORY/libmusicbrainz-objc"

git add -A
git commit -m "Update docs to commit $VERSION"

