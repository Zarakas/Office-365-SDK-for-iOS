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



#ifndef MSDIRECTORYSERVICESSERVICEPLANINFO_H
#define MSDIRECTORYSERVICESSERVICEPLANINFO_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSDirectoryServicesServicePlanInfo
 *
 */
@interface MSDirectoryServicesServicePlanInfo : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property servicePlanId
 *
 */
@property (nonatomic,  copy, setter=setServicePlanId:, getter=servicePlanId) NSString * servicePlanId;

/** Property servicePlanName
 *
 */
@property (nonatomic,  copy, setter=setServicePlanName:, getter=servicePlanName) NSString * servicePlanName;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
