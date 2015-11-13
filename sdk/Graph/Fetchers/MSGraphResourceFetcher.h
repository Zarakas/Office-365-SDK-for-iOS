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



#ifndef MSGRAPHRESOURCEFETCHER_H
#define MSGRAPHRESOURCEFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcMediaEntityFetcher.h"

@class MSGraphResourceOperations;


/** MSGraphResourceFetcher
 *
 */
@interface MSGraphResourceFetcher : MSOrcMediaEntityFetcher

@property (copy, nonatomic, readonly) MSGraphResourceOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphResource *, MSOrcError *))callback;
- (void)update:(MSGraphResource *)Resource callback:(void (^)(MSGraphResource *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphResourceFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphResourceFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphResourceFetcher *)select:(NSString *)params;
- (MSGraphResourceFetcher *)expand:(NSString *)value;

@end

#endif
