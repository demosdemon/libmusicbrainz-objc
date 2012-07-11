# libmusicbrainz-objc

This library is a iOS library for [MusicBrainz Web Service](http://musicbrainz.org/doc/XML_Web_Service/Version_2) 
and will eventually develop into a Framework for OS X use as well. This library 
was created as part of Brandon LeBlanc's 2012 [Google Summer of Code](https://google-melange.appspot.com/gsoc/proposal/review/google/gsoc2012/demosdemon/1) 
project.

## Getting Started
* To use the library in an iOS application
  1. Add `libmusicbrainz-objc.xcodeproj` to your project
  1. For the application's target under *Build Phases* add to *Target Dependencies* "libmusicbrainz-iphoneos"
  1. Under *Link Binary With Libraries* add in order:
    1. Foundation.framework
    1. CFNetwork.framework
    1. SystemConfiguration.framework
    1. CoreGraphics.framework
    1. MobileCoreServices.framework
    1. libxml2.dylib
    1. libz.dylib
    1. libmusicbrainz-iphoneos.a
  1. Add `#import "MB.h"` to your source and away you go.
* If Xcode complains about not being able to find headers, under *Build Settings*,
  find *Header Search Paths* and add (this should only be necessary if the
  libmusicbrainz-objc directory is not within your Xcode project directory):
  1. `$SDKROOT/usr/include/libxml2`
  1. `/path/to/libmusicbrainz-objc/libmusicbrainz-objc`

## Documentation
You can access the documentation documentation in several ways:

1. Online: http://demosdemon.github.com/libmusicbrainz-objc/docs/html
1. Within Xcode: 
    1. Open your Xcode Preferences (`⌘,`) and switch to Documentation tab. 
    1. Click the `+` button
    1. Add the docset feed: `feed://demosdemon.github.com/libmusicbrainz-objc/docs/publish/org.metabrainz.libmusicbrainz-objc.atom`
1. Generate the documentation from the project repository with the `genappledoc.sh` script ([appledoc](http://gentlebytes.com/appledoc/) must be installed for this to work)
1. Generate the documentation within xcode using the Documentation target ([appledoc](http://gentlebytes.com/appledoc/) must be installed for this to work)
