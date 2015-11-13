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


#ifndef MSGRAPHPLANDETAILSCOLLECTIONFETCHER_H
#define MSGRAPHPLANDETAILSCOLLECTIONFETCHER_H

@class MSGraphPlanDetailsFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphPlanDetailsCollectionFetcher
 *
 */
@interface MSGraphPlanDetailsCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPlanDetailsFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPlanDetails *)entity callback:(void (^)(MSGraphPlanDetails *, MSOrcError *))callback;

- (MSGraphPlanDetailsCollectionFetcher *)select:(NSString *)params;
- (MSGraphPlanDetailsCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPlanDetailsCollectionFetcher *)search:(NSString *)params;
- (MSGraphPlanDetailsCollectionFetcher *)top:(int)value;
- (MSGraphPlanDetailsCollectionFetcher *)skip:(int)value;
- (MSGraphPlanDetailsCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPlanDetailsCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPlanDetailsCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPlanDetailsCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
