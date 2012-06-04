/// 
/// @file AccountInformation.h
/// @author Jens Lukas
/// @date Aug 10 2010
/// @copyright 
///   2010 Jens Lukas <contact@jenslukas.com> \n
///   This program is made available under the terms of the MIT License.
///
/// @brief Helper class to store and retrieve account information in/from keychain 

#import <Foundation/Foundation.h>

@interface AccountInformation : NSObject {

}

- (void) setAccountInformation:(NSString *) username withPassword:(NSString *)password;
- (NSString *)getPassword;
- (NSString *)getUsername;
- (NSMutableDictionary *) createKeychainDictionary:(NSString *)identifier;
- (NSData *) getKeychainMatching:(NSString *)identifier;
- (BOOL)createKeychainValue:(NSString *)value forIdentifier:(NSString *) identifier;
- (BOOL)updateKeychainValue:(NSString *)value forIdentifier:(NSString *) identifier;
- (void)deleteKeychainValue:(NSString *)identifier;
@end
