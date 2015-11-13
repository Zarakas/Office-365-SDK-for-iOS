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


#ifndef MSGRAPHPLANTASKBOARDCOLLECTIONFETCHER_H
#define MSGRAPHPLANTASKBOARDCOLLECTIONFETCHER_H

@class MSGraphPlanTaskBoardFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphPlanTaskBoardCollectionFetcher
 *
 */
@interface MSGraphPlanTaskBoardCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSGraphPlanTaskBoardFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPlanTaskBoard *)entity callback:(void (^)(MSGraphPlanTaskBoard *, MSOrcError *))callback;

- (MSGraphPlanTaskBoardCollectionFetcher *)select:(NSString *)params;
- (MSGraphPlanTaskBoardCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPlanTaskBoardCollectionFetcher *)search:(NSString *)params;
- (MSGraphPlanTaskBoardCollectionFetcher *)top:(int)value;
- (MSGraphPlanTaskBoardCollectionFetcher *)skip:(int)value;
- (MSGraphPlanTaskBoardCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPlanTaskBoardCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPlanTaskBoardCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPlanTaskBoardCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
