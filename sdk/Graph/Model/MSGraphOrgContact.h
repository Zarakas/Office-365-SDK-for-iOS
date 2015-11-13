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


#ifndef MSGRAPHORGCONTACT_H
#define MSGRAPHORGCONTACT_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphProvisioningError;
@class MSGraphDirectoryObject;
#import "MSGraphDirectoryObject.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphOrgContact
 *
 */
@interface MSGraphOrgContact : MSGraphDirectoryObject <MSOrcInteroperableWithDictionary>

/** Property city
 *
 */
@property (nonatomic,  copy, setter=setCity:, getter=city) NSString * city;

/** Property country
 *
 */
@property (nonatomic,  copy, setter=setCountry:, getter=country) NSString * country;

/** Property department
 *
 */
@property (nonatomic,  copy, setter=setDepartment:, getter=department) NSString * department;

/** Property dirSyncEnabled
 *
 */
@property (nonatomic,  setter=setDirSyncEnabled:, getter=dirSyncEnabled) bool dirSyncEnabled;

/** Property displayName
 *
 */
@property (nonatomic,  copy, setter=setDisplayName:, getter=displayName) NSString * displayName;

/** Property facsimileTelephoneNumber
 *
 */
@property (nonatomic,  copy, setter=setFacsimileTelephoneNumber:, getter=facsimileTelephoneNumber) NSString * facsimileTelephoneNumber;

/** Property givenName
 *
 */
@property (nonatomic,  copy, setter=setGivenName:, getter=givenName) NSString * givenName;

/** Property jobTitle
 *
 */
@property (nonatomic,  copy, setter=setJobTitle:, getter=jobTitle) NSString * jobTitle;

/** Property lastDirSyncTime
 *
 */
@property (nonatomic,  copy, setter=setLastDirSyncTime:, getter=lastDirSyncTime) NSDate * lastDirSyncTime;

/** Property mail
 *
 */
@property (nonatomic,  copy, setter=setMail:, getter=mail) NSString * mail;

/** Property mailNickname
 *
 */
@property (nonatomic,  copy, setter=setMailNickname:, getter=mailNickname) NSString * mailNickname;

/** Property mobile
 *
 */
@property (nonatomic,  copy, setter=setMobile:, getter=mobile) NSString * mobile;

/** Property physicalDeliveryOfficeName
 *
 */
@property (nonatomic,  copy, setter=setPhysicalDeliveryOfficeName:, getter=physicalDeliveryOfficeName) NSString * physicalDeliveryOfficeName;

/** Property postalCode
 *
 */
@property (nonatomic,  copy, setter=setPostalCode:, getter=postalCode) NSString * postalCode;

/** Property provisioningErrors
 *
 */
@property (nonatomic,  copy, setter=setProvisioningErrors:, getter=provisioningErrors) NSMutableArray * provisioningErrors;

/** Property proxyAddresses
 *
 */
@property (nonatomic,  copy, setter=setProxyAddresses:, getter=proxyAddresses) NSMutableArray * proxyAddresses;

/** Property sipProxyAddress
 *
 */
@property (nonatomic,  copy, setter=setSipProxyAddress:, getter=sipProxyAddress) NSString * sipProxyAddress;

/** Property state
 *
 */
@property (nonatomic,  copy, setter=setState:, getter=state) NSString * state;

/** Property streetAddress
 *
 */
@property (nonatomic,  copy, setter=setStreetAddress:, getter=streetAddress) NSString * streetAddress;

/** Property surname
 *
 */
@property (nonatomic,  copy, setter=setSurname:, getter=surname) NSString * surname;

/** Property telephoneNumber
 *
 */
@property (nonatomic,  copy, setter=setTelephoneNumber:, getter=telephoneNumber) NSString * telephoneNumber;

/** Property thumbnailPhoto
 *
 */
@property (nonatomic,  copy, setter=setThumbnailPhoto:, getter=thumbnailPhoto) NSStream * thumbnailPhoto;

/** Property manager
 *
 */
@property (nonatomic,  copy, setter=setManager:, getter=manager) MSGraphDirectoryObject * manager;

/** Property directReports
 *
 */
@property (nonatomic,  copy, setter=setDirectReports:, getter=directReports) NSMutableArray * directReports;

/** Property memberOf
 *
 */
@property (nonatomic,  copy, setter=setMemberOf:, getter=memberOf) NSMutableArray * memberOf;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
