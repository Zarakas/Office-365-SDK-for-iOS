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



#ifndef MSGRAPHSERVICEPRINCIPALFETCHER_H
#define MSGRAPHSERVICEPRINCIPALFETCHER_H

#import "MSGraphModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSGraphAppRoleCollectionFetcher;
@class MSGraphKeyCredentialCollectionFetcher;
@class MSGraphOAuth2PermissionCollectionFetcher;
@class MSGraphPasswordCredentialCollectionFetcher;
@class MSGraphAppRoleAssignmentFetcher;
@class MSGraphAppRoleAssignmentCollectionFetcher;
@class MSGraphOAuth2PermissionGrantCollectionFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphAppRoleAssignmentFetcher;
@class MSGraphAppRoleAssignmentCollectionFetcher;
@class MSGraphOAuth2PermissionGrantCollectionFetcher;
@class MSGraphDirectoryObjectCollectionFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphAppRoleAssignmentFetcher;
@class MSGraphOAuth2PermissionGrantFetcher;
@class MSGraphDirectoryObjectFetcher;
@class MSGraphServicePrincipalOperations;


/** MSGraphServicePrincipalFetcher
 *
 */
@interface MSGraphServicePrincipalFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSGraphServicePrincipalOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSGraphServicePrincipal *, MSOrcError *))callback;
- (void)update:(MSGraphServicePrincipal *)ServicePrincipal callback:(void (^)(MSGraphServicePrincipal *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSGraphServicePrincipalFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphServicePrincipalFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSGraphServicePrincipalFetcher *)select:(NSString *)params;
- (MSGraphServicePrincipalFetcher *)expand:(NSString *)value;

@property (strong, nonatomic, readonly, getter=appRoleAssignedTo) MSGraphAppRoleAssignmentFetcher *appRoleAssignedTo;
@property (strong, nonatomic, readonly, getter=appRoleAssignments) MSGraphAppRoleAssignmentCollectionFetcher *appRoleAssignments;

- (MSGraphAppRoleAssignmentFetcher *)appRoleAssignmentsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=oauth2PermissionGrants) MSGraphOAuth2PermissionGrantCollectionFetcher *oauth2PermissionGrants;

- (MSGraphOAuth2PermissionGrantFetcher *)oauth2PermissionGrantsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=memberOf) MSGraphDirectoryObjectCollectionFetcher *memberOf;

- (MSGraphDirectoryObjectFetcher *)memberOfById:(id)identifier;


@property (strong, nonatomic, readonly, getter=createdOnBehalfOf) MSGraphDirectoryObjectFetcher *createdOnBehalfOf;
@property (strong, nonatomic, readonly, getter=createdObjects) MSGraphDirectoryObjectCollectionFetcher *createdObjects;

- (MSGraphDirectoryObjectFetcher *)createdObjectsById:(id)identifier;

@property (strong, nonatomic, readonly, getter=owners) MSGraphDirectoryObjectCollectionFetcher *owners;

- (MSGraphDirectoryObjectFetcher *)ownersById:(id)identifier;

@property (strong, nonatomic, readonly, getter=ownedObjects) MSGraphDirectoryObjectCollectionFetcher *ownedObjects;

- (MSGraphDirectoryObjectFetcher *)ownedObjectsById:(id)identifier;


@end

#endif
