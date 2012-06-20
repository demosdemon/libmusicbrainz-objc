#!/usr/bin/env sh

git merge -s recursive -X theirs master

DIRECTORY=`dirname $0`
OUTPUT=docs
VERSION=`git rev-parse --verify master`
PUBLUSH_URL=http://demosdemon.github.com/libmusicbrainz-objc/$OUTPUT/publish

rm -rf $DIRECTORY/$OUTPUT
appledoc \
	--project-name libmusicbrainz-objc \
	--project-company "Brandon LeBlanc" \
	--project-version $VERSION \
	--company-id org.metabrainz \
	--output $DIRECTORY/$OUTPUT \
	--keep-undocumented-objects \
	--keep-undocumented-members \
	--search-undocumented-doc \
	--merge-categories \
	--docset-feed-url $PUBLISH_URL/%DOCSETATOMFILENAME \
	--docset-package-url $PUBLISH_URL/%DOCSETPACKAGEFILENAME \
	--publish-docset \
	--print-settings \
	--no-install-docset \
	--keep-intermediate-files \
	--no-warn-undocumented-object \
	--no-warn-undocumented-member \
	--ignore KissXML \
	--ignore XML-to-NSDictionary \
	--ignore docs \
	$DIRECTORY

git add -A
git commit -m "Update docs to commit $VERSION"

