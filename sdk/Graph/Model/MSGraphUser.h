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


#ifndef MSGRAPHUSER_H
#define MSGRAPHUSER_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphAssignedLicense;
@class MSGraphAssignedPlan;
@class MSGraphPasswordProfile;
@class MSGraphProvisionedPlan;
@class MSGraphProvisioningError;
@class MSGraphAppRoleAssignment;
@class MSGraphOAuth2PermissionGrant;
@class MSGraphDirectoryObject;
@class MSGraphMessage;
@class MSGraphGroup;
@class MSGraphMailFolder;
@class MSGraphCalendar;
@class MSGraphCalendarGroup;
@class MSGraphEvent;
@class MSGraphContact;
@class MSGraphContactFolder;
@class MSGraphInferenceClassification;
@class MSGraphProfilePhoto;
@class MSGraphDrive;
@class MSGraphItem;
@class MSGraphTask;
@class MSGraphPlan;
@class MSGraphNotes;
#import "MSGraphDirectoryObject.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphUser
 *
 */
@interface MSGraphUser : MSGraphDirectoryObject <MSOrcInteroperableWithDictionary>

/** Property accountEnabled
 *
 */
@property (nonatomic,  setter=setAccountEnabled:, getter=accountEnabled) bool accountEnabled;

/** Property assignedLicenses
 *
 */
@property (nonatomic,  copy, setter=setAssignedLicenses:, getter=assignedLicenses) NSMutableArray * assignedLicenses;

/** Property assignedPlans
 *
 */
@property (nonatomic,  copy, setter=setAssignedPlans:, getter=assignedPlans) NSMutableArray * assignedPlans;

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

/** Property immutableId
 *
 */
@property (nonatomic,  copy, setter=setImmutableId:, getter=immutableId) NSString * immutableId;

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

/** Property onPremisesSecurityIdentifier
 *
 */
@property (nonatomic,  copy, setter=setOnPremisesSecurityIdentifier:, getter=onPremisesSecurityIdentifier) NSString * onPremisesSecurityIdentifier;

/** Property otherMails
 *
 */
@property (nonatomic,  copy, setter=setOtherMails:, getter=otherMails) NSMutableArray * otherMails;

/** Property passwordPolicies
 *
 */
@property (nonatomic,  copy, setter=setPasswordPolicies:, getter=passwordPolicies) NSString * passwordPolicies;

/** Property passwordProfile
 *
 */
@property (nonatomic,  copy, setter=setPasswordProfile:, getter=passwordProfile) MSGraphPasswordProfile * passwordProfile;

/** Property physicalDeliveryOfficeName
 *
 */
@property (nonatomic,  copy, setter=setPhysicalDeliveryOfficeName:, getter=physicalDeliveryOfficeName) NSString * physicalDeliveryOfficeName;

/** Property postalCode
 *
 */
@property (nonatomic,  copy, setter=setPostalCode:, getter=postalCode) NSString * postalCode;

/** Property preferredLanguage
 *
 */
@property (nonatomic,  copy, setter=setPreferredLanguage:, getter=preferredLanguage) NSString * preferredLanguage;

/** Property provisionedPlans
 *
 */
@property (nonatomic,  copy, setter=setProvisionedPlans:, getter=provisionedPlans) NSMutableArray * provisionedPlans;

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

/** Property usageLocation
 *
 */
@property (nonatomic,  copy, setter=setUsageLocation:, getter=usageLocation) NSString * usageLocation;

/** Property userPrincipalName
 *
 */
@property (nonatomic,  copy, setter=setUserPrincipalName:, getter=userPrincipalName) NSString * userPrincipalName;

/** Property userType
 *
 */
@property (nonatomic,  copy, setter=setUserType:, getter=userType) NSString * userType;

/** Property mailboxGuid
 *
 */
@property (nonatomic,  copy, setter=setMailboxGuid:, getter=mailboxGuid) NSString * mailboxGuid;

/** Property aboutMe
 *
 */
@property (nonatomic,  copy, setter=setAboutMe:, getter=aboutMe) NSString * aboutMe;

/** Property alias
 *
 */
@property (nonatomic,  copy, setter=setAlias:, getter=alias) NSString * alias;

/** Property birthday
 *
 */
@property (nonatomic,  copy, setter=setBirthday:, getter=birthday) NSDate * birthday;

/** Property hireDate
 *
 */
@property (nonatomic,  copy, setter=setHireDate:, getter=hireDate) NSDate * hireDate;

/** Property interests
 *
 */
@property (nonatomic,  copy, setter=setInterests:, getter=interests) NSMutableArray * interests;

/** Property mySite
 *
 */
@property (nonatomic,  copy, setter=setMySite:, getter=mySite) NSString * mySite;

/** Property pastProjects
 *
 */
@property (nonatomic,  copy, setter=setPastProjects:, getter=pastProjects) NSMutableArray * pastProjects;

/** Property preferredName
 *
 */
@property (nonatomic,  copy, setter=setPreferredName:, getter=preferredName) NSString * preferredName;

/** Property principalName
 *
 */
@property (nonatomic,  copy, setter=setPrincipalName:, getter=principalName) NSString * principalName;

/** Property responsibilities
 *
 */
@property (nonatomic,  copy, setter=setResponsibilities:, getter=responsibilities) NSMutableArray * responsibilities;

/** Property schools
 *
 */
@property (nonatomic,  copy, setter=setSchools:, getter=schools) NSMutableArray * schools;

/** Property skills
 *
 */
@property (nonatomic,  copy, setter=setSkills:, getter=skills) NSMutableArray * skills;

/** Property tags
 *
 */
@property (nonatomic,  copy, setter=setTags:, getter=tags) NSMutableArray * tags;

/** Property appRoleAssignments
 *
 */
@property (nonatomic,  copy, setter=setAppRoleAssignments:, getter=appRoleAssignments) NSMutableArray * appRoleAssignments;

/** Property oauth2PermissionGrants
 *
 */
@property (nonatomic,  copy, setter=setOauth2PermissionGrants:, getter=oauth2PermissionGrants) NSMutableArray * oauth2PermissionGrants;

/** Property ownedDevices
 *
 */
@property (nonatomic,  copy, setter=setOwnedDevices:, getter=ownedDevices) NSMutableArray * ownedDevices;

/** Property registeredDevices
 *
 */
@property (nonatomic,  copy, setter=setRegisteredDevices:, getter=registeredDevices) NSMutableArray * registeredDevices;

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

/** Property createdObjects
 *
 */
@property (nonatomic,  copy, setter=setCreatedObjects:, getter=createdObjects) NSMutableArray * createdObjects;

/** Property ownedObjects
 *
 */
@property (nonatomic,  copy, setter=setOwnedObjects:, getter=ownedObjects) NSMutableArray * ownedObjects;

/** Property messages
 *
 */
@property (nonatomic,  copy, setter=setMessages:, getter=messages) NSMutableArray * messages;

/** Property joinedGroups
 *
 */
@property (nonatomic,  copy, setter=setJoinedGroups:, getter=joinedGroups) NSMutableArray * joinedGroups;

/** Property mailFolders
 *
 */
@property (nonatomic,  copy, setter=setMailFolders:, getter=mailFolders) NSMutableArray * mailFolders;

/** Property calendar
 *
 */
@property (nonatomic,  copy, setter=setCalendar:, getter=calendar) MSGraphCalendar * calendar;

/** Property calendars
 *
 */
@property (nonatomic,  copy, setter=setCalendars:, getter=calendars) NSMutableArray * calendars;

/** Property calendarGroups
 *
 */
@property (nonatomic,  copy, setter=setCalendarGroups:, getter=calendarGroups) NSMutableArray * calendarGroups;

/** Property calendarView
 *
 */
@property (nonatomic,  copy, setter=setCalendarView:, getter=calendarView) NSMutableArray * calendarView;

/** Property events
 *
 */
@property (nonatomic,  copy, setter=setEvents:, getter=events) NSMutableArray * events;

/** Property contacts
 *
 */
@property (nonatomic,  copy, setter=setContacts:, getter=contacts) NSMutableArray * contacts;

/** Property contactFolders
 *
 */
@property (nonatomic,  copy, setter=setContactFolders:, getter=contactFolders) NSMutableArray * contactFolders;

/** Property inferenceClassification
 *
 */
@property (nonatomic,  copy, setter=setInferenceClassification:, getter=inferenceClassification) MSGraphInferenceClassification * inferenceClassification;

/** Property rootFolder
 *
 */
@property (nonatomic,  copy, setter=setRootFolder:, getter=rootFolder) MSGraphMailFolder * rootFolder;

/** Property photo
 *
 */
@property (nonatomic,  copy, setter=setPhoto:, getter=photo) MSGraphProfilePhoto * photo;

/** Property photos
 *
 */
@property (nonatomic,  copy, setter=setPhotos:, getter=photos) NSMutableArray * photos;

/** Property drive
 *
 */
@property (nonatomic,  copy, setter=setDrive:, getter=drive) MSGraphDrive * drive;

/** Property trendingAround
 *
 */
@property (nonatomic,  copy, setter=setTrendingAround:, getter=trendingAround) NSMutableArray * trendingAround;

/** Property workingWith
 *
 */
@property (nonatomic,  copy, setter=setWorkingWith:, getter=workingWith) NSMutableArray * workingWith;

/** Property tasks
 *
 */
@property (nonatomic,  copy, setter=setTasks:, getter=tasks) NSMutableArray * tasks;

/** Property plans
 *
 */
@property (nonatomic,  copy, setter=setPlans:, getter=plans) NSMutableArray * plans;

/** Property notes
 *
 */
@property (nonatomic,  copy, setter=setNotes:, getter=notes) MSGraphNotes * notes;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
