#!/usr/bin/env sh

git merge -s recursive -X theirs master

DIRECTORY=`dirname $0`
OUTPUT=docs
VERSION=`git rev-parse --verify master`
PUBLISH_URL="http://demosdemon.github.com/libmusicbrainz-objc/$OUTPUT/publish"

appledoc \
	--clean-output \
	--create-html \
	--create-docset \
	--project-name libmusicbrainz-objc \
	--project-company "MetaBrainz" \
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
	--keep-intermediate-files \
	--print-settings \
	--no-warn-undocumented-object \
	--no-warn-undocumented-member \
	--no-warn-missing-arg \
	--no-warn-empty-description \
	--no-warn-invalid-crossref \
	--no-warn-empty-description \
	--no-warn-unknown-directiv \
	--ignore docs \
	--ignore submodules \
	$DIRECTORY

git add docs
git commit -m "Update docs to commit $VERSION"

