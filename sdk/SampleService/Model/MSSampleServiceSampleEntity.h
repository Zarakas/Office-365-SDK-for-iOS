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


#ifndef MSSAMPLESERVICESAMPLEENTITY_H
#define MSSAMPLESERVICESAMPLEENTITY_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSSampleServiceAnotherEntity;
@class MSSampleServiceItem;
#import "MSSampleServiceEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSSampleServiceSampleEntity
 *
 */
@interface MSSampleServiceSampleEntity : MSSampleServiceEntity <MSOrcInteroperableWithDictionary>

/** Property displayName
 *
 */
@property (nonatomic,  copy, setter=setDisplayName:, getter=displayName) NSString * displayName;

/** Property entityKey
 *
 */
@property (nonatomic,  copy, setter=setEntityKey:, getter=entityKey) NSString * entityKey;

/** Property nestedSampleEntity
 *
 */
@property (nonatomic,  copy, setter=setNestedSampleEntity:, getter=nestedSampleEntity) MSSampleServiceSampleEntity * nestedSampleEntity;

/** Property content
 *
 */
@property (nonatomic,  copy, setter=setContent:, getter=content) NSStream * content;

/** Property navigations
 *
 */
@property (nonatomic,  copy, setter=setNavigations:, getter=navigations) NSMutableArray * navigations;

/** Property items
 *
 */
@property (nonatomic,  copy, setter=setItems:, getter=items) NSMutableArray * items;

/** Property nestedSampleEntityCollection
 *
 */
@property (nonatomic,  copy, setter=setNestedSampleEntityCollection:, getter=nestedSampleEntityCollection) NSMutableArray * nestedSampleEntityCollection;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
