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



#ifndef MSGRAPHPLANTASKBOARDFETCHER_H
#define MSGRAPHPLANTASKBOARDFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphPlanTaskBoardOperations;


/** MSGraphPlanTaskBoardFetcher
 *
 */
@interface MSGraphPlanTaskBoardFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphPlanTaskBoardOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphPlanTaskBoard *, MSOrcError *))callback;
- (void)update:(MSGraphPlanTaskBoard *)planTaskBoard callback:(void (^)(MSGraphPlanTaskBoard *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphPlanTaskBoardFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPlanTaskBoardFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphPlanTaskBoardFetcher *)select:(NSString *)params;
- (MSGraphPlanTaskBoardFetcher *)expand:(NSString *)value;

@end

#endif
