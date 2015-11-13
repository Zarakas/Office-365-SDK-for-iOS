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


#ifndef MSDIRECTORYSERVICESUSEROPERATIONS_H
#define MSDIRECTORYSERVICESUSEROPERATIONS_H
				  		


#import "MSDirectoryServicesModels.h"
#import "api/api.h"
#import "core/core.h"
#import "MSDirectoryServicesDirectoryObjectOperations.h"


/** MSDirectoryServicesUserOperations
 *
 */
@interface MSDirectoryServicesUserOperations : MSDirectoryServicesDirectoryObjectOperations

- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)assignLicenseWithAddLicenses:(MSDirectoryServicesAssignedLicense *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(MSDirectoryServicesUser *, MSOrcError*))callback ;
- (void)assignLicenseRawWithAddLicenses:(NSString *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
