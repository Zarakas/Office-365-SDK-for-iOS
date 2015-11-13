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


#ifndef MSGRAPHPAGECOLLECTIONFETCHER_H
#define MSGRAPHPAGECOLLECTIONFETCHER_H

@class MSGraphPageFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphPageCollectionFetcher
 *
 */
@interface MSGraphPageCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphPageFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPage *)entity callback:(void (^)(MSGraphPage *, MSOrcError *))callback;

- (MSGraphPageCollectionFetcher *)select:(NSString *)params;
- (MSGraphPageCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPageCollectionFetcher *)search:(NSString *)params;
- (MSGraphPageCollectionFetcher *)top:(int)value;
- (MSGraphPageCollectionFetcher *)skip:(int)value;
- (MSGraphPageCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPageCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPageCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPageCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
