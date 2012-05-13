//
//  AccountInformation.h
//  Musicbrainz
//
//  Created by Jens Lukas on 8/10/10.
//  Copyright 2010 Jens Lukas <contact@jenslukas.com>
//
//  This program is made available under the terms of the MIT License.
//
//	Abstract: Helper class to store and retrieve account information in/from keychain

#import "AccountInformation.h"
#import <Security/Security.h>

@implementation AccountInformation

static NSString *serviceName = @"org.musicbrainy.MBApp";
static NSString *usernameIdentifier = @"username";
static NSString *passwordIdentifier = @"password";

- (void) setAccountInformation:(NSString *) username withPassword:(NSString *)password {
	// if username in keychain update otherwise create
	if([self getKeychainMatching:usernameIdentifier]) {
		[self updateKeychainValue:username forIdentifier:usernameIdentifier];
	} else {
		[self createKeychainValue:username forIdentifier:usernameIdentifier];
	}
	
	// same as above for password
	if([self getKeychainMatching:passwordIdentifier]) {
		[self updateKeychainValue:password forIdentifier:passwordIdentifier];
	} else {
		[self createKeychainValue:password forIdentifier:passwordIdentifier];
	}
}

- (NSString *)getUsername {
	NSData *usernameData = [self getKeychainMatching:usernameIdentifier];
	if(usernameData) {
		NSString *username = [[NSString alloc] initWithData:usernameData encoding:NSUTF8StringEncoding];
		[usernameData release];
		return username;
	}
	return nil;
}


- (NSString *)getPassword {
	NSData *passwordData = [self getKeychainMatching:passwordIdentifier];
	if(passwordData) {
		NSString *password = [[NSString alloc] initWithData:passwordData encoding:NSUTF8StringEncoding];
		[passwordData release];
		return password;
	}
	return nil;
}

#pragma mark Keychain helper methods
- (NSMutableDictionary *) createKeychainDictionary:(NSString *)identifier {
	NSMutableDictionary *keychainDictionary = [[NSMutableDictionary alloc] init];
	[keychainDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
	
	NSData *encodedIdentifier = [identifier dataUsingEncoding:NSUTF8StringEncoding];
	
	[keychainDictionary setObject:encodedIdentifier forKey:(id)kSecAttrGeneric];
	[keychainDictionary setObject:encodedIdentifier forKey:(id)kSecAttrAccount];
	[keychainDictionary setObject:serviceName forKey:(id)kSecAttrService];
	
	return keychainDictionary;
}

- (NSData *) getKeychainMatching:(NSString *)identifier {
	NSMutableDictionary *keychainDictionary = [self createKeychainDictionary:identifier];
	
	// Add searchattributes
	[keychainDictionary setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];
	// add search return types
	[keychainDictionary setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
	
	NSData *result = nil;
	SecItemCopyMatching((CFDictionaryRef)keychainDictionary, (CFTypeRef *)&result);
	
	[keychainDictionary release];
	return result;
}

-(BOOL)createKeychainValue:(NSString *)value forIdentifier:(NSString *) identifier {
	NSMutableDictionary *dictionary = [self createKeychainDictionary:identifier];
	
	NSData *data = [value dataUsingEncoding:NSUTF8StringEncoding];
	[dictionary setObject:data forKey:(id)kSecValueData];
	
	OSStatus status = SecItemAdd((CFDictionaryRef)dictionary, NULL);
	[dictionary release];
	
	if(status == errSecSuccess) {
		return YES;
	}
	return NO;
}

-(BOOL)updateKeychainValue:(NSString *)value forIdentifier:(NSString *) identifier {
	NSMutableDictionary *keychainDictionary = [self createKeychainDictionary:identifier];
	NSMutableDictionary *updateDictionary = [[NSMutableDictionary alloc] init];
	NSData *data = [value dataUsingEncoding:NSUTF8StringEncoding];
	[updateDictionary setObject:data forKey:(id)kSecValueData];
	
	OSStatus status = SecItemUpdate((CFDictionaryRef)keychainDictionary, (CFDictionaryRef)updateDictionary);
	
	[keychainDictionary release];
	[updateDictionary release];
	
	if(status == errSecSuccess) {
		return YES;
	}
	return NO;
}

-(void)deleteKeychainValue:(NSString *)identifier {
	NSMutableDictionary *keychainDictionary= [self createKeychainDictionary:identifier];
	SecItemDelete((CFDictionaryRef)keychainDictionary);
	[keychainDictionary release];
}

@end