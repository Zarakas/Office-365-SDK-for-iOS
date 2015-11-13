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


#ifndef MSOUTLOOKEVENTCOLLECTIONFETCHER_H
#define MSOUTLOOKEVENTCOLLECTIONFETCHER_H

@class MSOutlookEventFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOutlookModels.h"

/** MSOutlookEventCollectionFetcher
 *
 */
@interface MSOutlookEventCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOutlookEventFetcher *)getById: (id) identifier;
- (void)add:(MSOutlookEvent *)entity callback:(void (^)(MSOutlookEvent *, MSOrcError *))callback;

- (MSOutlookEventCollectionFetcher *)select:(NSString *)params;
- (MSOutlookEventCollectionFetcher *)filter:(NSString *)params;
- (MSOutlookEventCollectionFetcher *)search:(NSString *)params;
- (MSOutlookEventCollectionFetcher *)top:(int)value;
- (MSOutlookEventCollectionFetcher *)skip:(int)value;
- (MSOutlookEventCollectionFetcher *)expand:(NSString *)value;
- (MSOutlookEventCollectionFetcher *)orderBy:(NSString *)params;
- (MSOutlookEventCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookEventCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
