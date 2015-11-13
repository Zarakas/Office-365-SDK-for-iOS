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


#ifndef MSGRAPHPRIVILEGEDSECURITYALERTOPERATIONS_H
#define MSGRAPHPRIVILEGEDSECURITYALERTOPERATIONS_H
				  		


#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcOperations.h"


/** MSGraphPrivilegedSecurityAlertOperations
 *
 */
@interface MSGraphPrivilegedSecurityAlertOperations : MSOrcOperations

- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)dismissWithCallback:(void (^)(MSGraphPrivilegedSecurityAlert *, MSOrcError*))callback ;
- (void)dismissRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)reactivateWithCallback:(void (^)(MSGraphPrivilegedSecurityAlert *, MSOrcError*))callback ;
- (void)reactivateRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)fixWithItemId:(int)itemId callback:(void (^)(MSGraphPrivilegedSecurityAlert *, MSOrcError*))callback ;
- (void)fixRawWithItemId:(NSString *)itemId callback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
