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


#ifndef MSGRAPHPRIVILEGEDOPERATIONNOTIFICATIONCOLLECTIONFETCHER_H
#define MSGRAPHPRIVILEGEDOPERATIONNOTIFICATIONCOLLECTIONFETCHER_H

@class MSGraphPrivilegedOperationNotificationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphPrivilegedOperationNotificationCollectionFetcher
 *
 */
@interface MSGraphPrivilegedOperationNotificationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphPrivilegedOperationNotificationFetcher *)getById: (id) identifier;
- (void)add:(MSGraphPrivilegedOperationNotification *)entity callback:(void (^)(MSGraphPrivilegedOperationNotification *, MSOrcError *))callback;

- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)select:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)filter:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)search:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)top:(int)value;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)skip:(int)value;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)expand:(NSString *)value;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphPrivilegedOperationNotificationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
