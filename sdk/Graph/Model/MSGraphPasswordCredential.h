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



#ifndef MSGRAPHPASSWORDCREDENTIAL_H
#define MSGRAPHPASSWORDCREDENTIAL_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphPasswordCredential
 *
 */
@interface MSGraphPasswordCredential : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property customKeyIdentifier
 *
 */
@property (nonatomic,  copy, setter=setCustomKeyIdentifier:, getter=customKeyIdentifier) NSData * customKeyIdentifier;

/** Property endDate
 *
 */
@property (nonatomic,  copy, setter=setEndDate:, getter=endDate) NSDate * endDate;

/** Property keyId
 *
 */
@property (nonatomic,  copy, setter=setKeyId:, getter=keyId) NSString * keyId;

/** Property startDate
 *
 */
@property (nonatomic,  copy, setter=setStartDate:, getter=startDate) NSDate * startDate;

/** Property value
 *
 */
@property (nonatomic,  copy, setter=setValue:, getter=value) NSString * value;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
