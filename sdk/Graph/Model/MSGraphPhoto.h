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



#ifndef MSGRAPHPHOTO_H
#define MSGRAPHPHOTO_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphPhoto
 *
 */
@interface MSGraphPhoto : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property cameraMake
 *
 */
@property (nonatomic,  copy, setter=setCameraMake:, getter=cameraMake) NSString * cameraMake;

/** Property cameraModel
 *
 */
@property (nonatomic,  copy, setter=setCameraModel:, getter=cameraModel) NSString * cameraModel;

/** Property exposureDenominator
 *
 */
@property (nonatomic,  setter=setExposureDenominator:, getter=exposureDenominator) double exposureDenominator;

/** Property exposureNumerator
 *
 */
@property (nonatomic,  setter=setExposureNumerator:, getter=exposureNumerator) double exposureNumerator;

/** Property focalLength
 *
 */
@property (nonatomic,  setter=setFocalLength:, getter=focalLength) double focalLength;

/** Property fNumber
 *
 */
@property (nonatomic,  setter=setFNumber:, getter=fNumber) double fNumber;

/** Property takenDateTime
 *
 */
@property (nonatomic,  copy, setter=setTakenDateTime:, getter=takenDateTime) NSDate * takenDateTime;

/** Property iso
 *
 */
@property (nonatomic,  setter=setIso:, getter=iso) int iso;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
