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


#ifndef MSFILESDRIVE_H
#define MSFILESDRIVE_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSFilesIdentity;
@class MSFilesDriveQuota;
@class MSFilesItem;
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSFilesDrive
 *
 */
@interface MSFilesDrive : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property owner
 *
 */
@property (nonatomic,  copy, setter=setOwner:, getter=owner) MSFilesIdentity * owner;

/** Property quota
 *
 */
@property (nonatomic,  copy, setter=setQuota:, getter=quota) MSFilesDriveQuota * quota;

/** Property files
 *
 */
@property (nonatomic,  copy, setter=setFiles:, getter=files) NSMutableArray * files;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
