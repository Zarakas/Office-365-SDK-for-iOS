/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#ifndef MSGRAPHOAUTH2PERMISSIONGRANTCOLLECTIONFETCHER_H
#define MSGRAPHOAUTH2PERMISSIONGRANTCOLLECTIONFETCHER_H

@class MSGraphOAuth2PermissionGrantFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphOAuth2PermissionGrantCollectionFetcher
 *
 */
@interface MSGraphOAuth2PermissionGrantCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphOAuth2PermissionGrantFetcher *)getById: (id) identifier;
- (void)add:(MSGraphOAuth2PermissionGrant *)entity callback:(void (^)(MSGraphOAuth2PermissionGrant *, MSOrcError *))callback;

- (MSGraphOAuth2PermissionGrantCollectionFetcher *)select:(NSString *)params;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)filter:(NSString *)params;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)search:(NSString *)params;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)top:(int)value;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)skip:(int)value;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)expand:(NSString *)value;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphOAuth2PermissionGrantCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
