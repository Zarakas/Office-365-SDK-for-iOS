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


#ifndef MSGRAPHDIRECTORYLINKCHANGECOLLECTIONFETCHER_H
#define MSGRAPHDIRECTORYLINKCHANGECOLLECTIONFETCHER_H

@class MSGraphDirectoryLinkChangeFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphDirectoryLinkChangeCollectionFetcher
 *
 */
@interface MSGraphDirectoryLinkChangeCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphDirectoryLinkChangeFetcher *)getById: (id) identifier;
- (void)add:(MSGraphDirectoryLinkChange *)entity callback:(void (^)(MSGraphDirectoryLinkChange *, MSOrcError *))callback;

- (MSGraphDirectoryLinkChangeCollectionFetcher *)select:(NSString *)params;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)filter:(NSString *)params;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)search:(NSString *)params;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)top:(int)value;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)skip:(int)value;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)expand:(NSString *)value;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphDirectoryLinkChangeCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
