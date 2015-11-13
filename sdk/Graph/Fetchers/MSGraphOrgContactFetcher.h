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



#ifndef MSGRAPHORGCONTACTFETCHER_H
#define MSGRAPHORGCONTACTFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphProvisioningErrorCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphOrgContactOperations;


/** MSGraphOrgContactFetcher
 *
 */
@interface MSGraphOrgContactFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphOrgContactOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphOrgContact *, MSOrcError *))callback;
- (void)update:(MSGraphOrgContact *)OrgContact callback:(void (^)(MSGraphOrgContact *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphOrgContactFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphOrgContactFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphOrgContactFetcher *)select:(NSString *)params;
- (MSGraphOrgContactFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=manager) MSGraphDirectoryObjectFetcher *manager;
@property (strong, nonatomic, readonly, getter=directReports) MSGraphDirectoryObjectCollectionFetcher *directReports;

- (MSGraphDirectoryObjectFetcher *)directReportsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=memberOf) MSGraphDirectoryObjectCollectionFetcher *memberOf;

- (MSGraphDirectoryObjectFetcher *)memberOfById:(id)identifier;


@end

#endif
