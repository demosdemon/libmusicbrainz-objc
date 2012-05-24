/// 
/// @file MBAlias.m
/// @author Joachim LeBlanc
/// @date May 24 2012
/// @copyright 
///   2012 Joachim LeBlanc <demosdemon@gmail.com> \n
///   This program is made available under the terms of the MIT License.
/// 
/// @brief Base class for all entities

#import "DDXML.h"

#if TARGET_OS_IPHONE && 1 // Disabled by default

// Since KissXML is a drop in replacement for NSXML,
// it may be desireable (when writing cross-platform code to be used on both Mac OS X and iOS)
// to use the NSXML prefixes instead of the DDXML prefix.
// 
// This way, on Mac OS X it uses NSXML, and on iOS it uses KissXML.

#ifndef NSXMLNode
#define NSXMLNode DDXMLNode
#endif
#ifndef NSXMLElement
#define NSXMLElement DDXMLElement
#endif
#ifndef NSXMLDocument
#define NSXMLDocument DDXMLDocument
#endif

#ifndef NSXMLInvalidKind
#define NSXMLInvalidKind DDXMLInvalidKind
#endif
#ifndef NSXMLDocumentKind
#define NSXMLDocumentKind DDXMLDocumentKind
#endif
#ifndef NSXMLElementKind
#define NSXMLElementKind DDXMLElementKind
#endif
#ifndef NSXMLAttributeKind
#define NSXMLAttributeKind DDXMLAttributeKind
#endif
#ifndef NSXMLNamespaceKind
#define NSXMLNamespaceKind DDXMLNamespaceKind
#endif
#ifndef NSXMLProcessingInstructionKind
#define NSXMLProcessingInstructionKind DDXMLProcessingInstructionKind
#endif
#ifndef NSXMLCommentKind
#define NSXMLCommentKind DDXMLCommentKind
#endif
#ifndef NSXMLTextKind
#define NSXMLTextKind DDXMLTextKind
#endif
#ifndef NSXMLDTDKind
#define NSXMLDTDKind DDXMLDTDKind
#endif
#ifndef NSXMLEntityDeclarationKind
#define NSXMLEntityDeclarationKind DDXMLEntityDeclarationKind
#endif
#ifndef NSXMLAttributeDeclarationKind
#define NSXMLAttributeDeclarationKind DDXMLAttributeDeclarationKind
#endif
#ifndef NSXMLElementDeclarationKind
#define NSXMLElementDeclarationKind DDXMLElementDeclarationKind
#endif
#ifndef NSXMLNotationDeclarationKind
#define NSXMLNotationDeclarationKind DDXMLNotationDeclarationKind
#endif

#ifndef NSXMLNodeOptionsNone
#define NSXMLNodeOptionsNone DDXMLNodeOptionsNone
#endif
#ifndef NSXMLNodeExpandEmptyElement
#define NSXMLNodeExpandEmptyElement DDXMLNodeExpandEmptyElement
#endif
#ifndef NSXMLNodeCompactEmptyElement
#define NSXMLNodeCompactEmptyElement DDXMLNodeCompactEmptyElement
#endif
#ifndef NSXMLNodePrettyPrint
#define NSXMLNodePrettyPrint DDXMLNodePrettyPrint
#endif

#endif // #if TARGET_OS_IPHONE