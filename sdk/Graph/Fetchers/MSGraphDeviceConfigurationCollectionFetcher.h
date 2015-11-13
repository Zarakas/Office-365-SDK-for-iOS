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


#ifndef MSGRAPHDEVICECONFIGURATIONCOLLECTIONFETCHER_H
#define MSGRAPHDEVICECONFIGURATIONCOLLECTIONFETCHER_H

@class MSGraphDeviceConfigurationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphDeviceConfigurationCollectionFetcher
 *
 */
@interface MSGraphDeviceConfigurationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphDeviceConfigurationFetcher *)getById: (id) identifier;
- (void)add:(MSGraphDeviceConfiguration *)entity callback:(void (^)(MSGraphDeviceConfiguration *, MSOrcError *))callback;

- (MSGraphDeviceConfigurationCollectionFetcher *)select:(NSString *)params;
- (MSGraphDeviceConfigurationCollectionFetcher *)filter:(NSString *)params;
- (MSGraphDeviceConfigurationCollectionFetcher *)search:(NSString *)params;
- (MSGraphDeviceConfigurationCollectionFetcher *)top:(int)value;
- (MSGraphDeviceConfigurationCollectionFetcher *)skip:(int)value;
- (MSGraphDeviceConfigurationCollectionFetcher *)expand:(NSString *)value;
- (MSGraphDeviceConfigurationCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphDeviceConfigurationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphDeviceConfigurationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
