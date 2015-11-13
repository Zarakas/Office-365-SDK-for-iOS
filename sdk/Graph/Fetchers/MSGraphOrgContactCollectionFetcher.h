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


#ifndef MSGRAPHORGCONTACTCOLLECTIONFETCHER_H
#define MSGRAPHORGCONTACTCOLLECTIONFETCHER_H

@class MSGraphOrgContactFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphOrgContactCollectionFetcher
 *
 */
@interface MSGraphOrgContactCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphOrgContactFetcher *)getById: (id) identifier;
- (void)add:(MSGraphOrgContact *)entity callback:(void (^)(MSGraphOrgContact *, MSOrcError *))callback;

- (MSGraphOrgContactCollectionFetcher *)select:(NSString *)params;
- (MSGraphOrgContactCollectionFetcher *)filter:(NSString *)params;
- (MSGraphOrgContactCollectionFetcher *)search:(NSString *)params;
- (MSGraphOrgContactCollectionFetcher *)top:(int)value;
- (MSGraphOrgContactCollectionFetcher *)skip:(int)value;
- (MSGraphOrgContactCollectionFetcher *)expand:(NSString *)value;
- (MSGraphOrgContactCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphOrgContactCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphOrgContactCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
