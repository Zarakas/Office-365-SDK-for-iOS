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


#ifndef MSONENOTEMYORGANIZATIONCOLLECTIONFETCHER_H
#define MSONENOTEMYORGANIZATIONCOLLECTIONFETCHER_H

@class MSOneNoteMyOrganizationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOneNoteModels.h"

/** MSOneNoteMyOrganizationCollectionFetcher
 *
 */
@interface MSOneNoteMyOrganizationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSOneNoteMyOrganizationFetcher *)getById: (id) identifier;
- (void)add:(MSOneNoteMyOrganization *)entity callback:(void (^)(MSOneNoteMyOrganization *, MSOrcError *))callback;

- (MSOneNoteMyOrganizationCollectionFetcher *)select:(NSString *)params;
- (MSOneNoteMyOrganizationCollectionFetcher *)filter:(NSString *)params;
- (MSOneNoteMyOrganizationCollectionFetcher *)search:(NSString *)params;
- (MSOneNoteMyOrganizationCollectionFetcher *)top:(int)value;
- (MSOneNoteMyOrganizationCollectionFetcher *)skip:(int)value;
- (MSOneNoteMyOrganizationCollectionFetcher *)expand:(NSString *)value;
- (MSOneNoteMyOrganizationCollectionFetcher *)orderBy:(NSString *)params;
- (MSOneNoteMyOrganizationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteMyOrganizationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
