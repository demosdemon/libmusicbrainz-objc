
# libmusicbrainz-objc

This library is a iOS library for [MusicBrainz Web Service](http://musicbrainz.org/doc/XML_Web_Service/Version_2) 
and will eventually develop into a Framework for OS X use as well. This library 
was created as part of Brandon LeBlanc's 2012 [Google Summer of Code](https://google-melange.appspot.com/gsoc/proposal/review/google/gsoc2012/demosdemon/1) 
project.

## Getting Started
* To use the library in an iOS application
 * Add `libmusicbrainz-objc.xcodeproj` to your project
 * For the application's target under *Build Phases* add `iOS-Framework` to *Target Dependencies*
 * Under *Link Binary With Libraries* add in order (all should be marked Required):
     1. Foundation.framework
     1. CFNetwork.framework
     1. SystemConfiguration.framework
     1. MobileCoreServices.framework
     1. UIKit.framework
     1. Security.framework
     1. libxml2.dylib
     1. libz.dylib
     1. libmusicbrainz-iphoneos.a
 * Add `$(SDKROOT)/usr/include/libxml2` to `HEADER_SEARCH_PATHS` under *Build Settings*
 * Add `#import <musicbrainz-ios/MB.h>` to your source and away you go.

## Examples
All communication with the webservice is done with MBConnection objects with MBRequest objects.

Create an MBConnection object like:
```objc
MBConnection * conn = [MBConnection connectionWithClientName:@"client-version"
                                                      server:@"musicbrainz.org"
                                                        port:[NSNumber numberWithInt:80]
                      ];
```
For all instances of the initializer, ClientName is a required parameter, cannot
be empty and cannot be nil (see the [webservice documentation](http://musicbrainz.org/doc/XML_Web_Service/Version_2)
as to why). Server defaults to ”musicbrainz.org” and port defaults to 80.

To create a request, examine MBRequest.h for the various helper creators. For a simple lookup request, you can use:
```objc
MBRequest * req = [MBRequest lookupWithEntity:MBEntityArtist
                                         mbid:@"7e84f845-ac16-41fe-9ff8-df12eb32af55"
                                incParameters:( MBIncParameterArtistRels | MBIncParameterReleaseGroups )
                  ];
```

`MBEntity*` and `MBIncParameter*` are enums declared in [MBRequests.h](https://github.com/demosdemon/libmusicbrainz-objc/blob/master/libmusicbrainz-objc/Requests/MBRequest.h).

To submit the request, use:
```objc
void (^successBlock) (MBRequest*, MBMetadata*) = ^(MBRequest * request, MBMetadata * metadata)
{
  // ObjC block that does something with metadata
};

void (^failureBlock) (MBRequest*, NSError*, NSData*) = ^(MBRequest * request, NSError * error, NSData * response)
{
  // ObjC block that does something with the error
  // response may be nil
};

[conn enqueueRequest:req
           onSuccess:successBlock
           onFailure:failureBlock];
```

where `successBlock` and `failureBlock` are ObjC blocks that handle the response
from the webservice. `successBlock` and `failureBlock` may or may not be executed
on the main thread, assume not and act accordingly.

`MBMetadata`, and all of it's siblings, have properties according to the data 
returned from the webservice. Any extra attributes or elements not contained in 
the properties can be accessed via the ExtraAttributes/ExtraElements 
dictionaries, respectively.

## Documentation
You can access the documentation documentation in several ways:

1. Online: http://demosdemon.github.com/libmusicbrainz-objc/docs/html
1. Within Xcode:
    1. Open your Xcode Preferences (`⌘,`) and switch to Documentation tab.
    1. Click the `+` button
    1. Add the docset feed: `feed://demosdemon.github.com/libmusicbrainz-objc/docs/publish/org.metabrainz.libmusicbrainz-objc.atom`
1. Generate the documentation from the project repository with the `genappledoc.sh` script ([appledoc](http://gentlebytes.com/appledoc/) must be installed for this to work)
1. Generate the documentation within xcode using the Documentation target ([appledoc](http://gentlebytes.com/appledoc/) must be installed for this to work)

## License
libmusicbrainz-objc is licensed under the [MIT 'Expat' License](http://opensource.org/licenses/MIT). libmusicbrainz-objc uses software from:

* [Google Toolbox for Mac](http://code.google.com/p/google-toolbox-for-mac/) with [Apache 2.0 License](http://www.apache.org/licenses/LICENSE-2.0)
* [KissXML](https://github.com/robbiehanson/KissXML) with [BSD License](https://github.com/robbiehanson/KissXML/blob/master/LICENSE.txt)
* [MKNetworkKit](https://github.com/MugunthKumar/MKNetworkKit) with the MIT License
* [SSKeychain](https://github.com/samsoffes/sskeychain) with the MIT License
