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


#ifndef MSGRAPHTASK_H
#define MSGRAPHTASK_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSGraphAppliedCategoriesCollection;
@class MSGraphTaskDetails;
@class MSGraphTaskBoardTaskFormat;
#import "MSGraphPreviewType.h"
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSGraphTask
 *
 */
@interface MSGraphTask : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property createdBy
 *
 */
@property (nonatomic,  copy, setter=setCreatedBy:, getter=createdBy) NSString * createdBy;

/** Property assignedTo
 *
 */
@property (nonatomic,  copy, setter=setAssignedTo:, getter=assignedTo) NSString * assignedTo;

/** Property planId
 *
 */
@property (nonatomic,  copy, setter=setPlanId:, getter=planId) NSString * planId;

/** Property bucketId
 *
 */
@property (nonatomic,  copy, setter=setBucketId:, getter=bucketId) NSString * bucketId;

/** Property title
 *
 */
@property (nonatomic,  copy, setter=setTitle:, getter=title) NSString * title;

/** Property orderHint
 *
 */
@property (nonatomic,  copy, setter=setOrderHint:, getter=orderHint) NSString * orderHint;

/** Property assigneePriority
 *
 */
@property (nonatomic,  copy, setter=setAssigneePriority:, getter=assigneePriority) NSString * assigneePriority;

/** Property percentComplete
 *
 */
@property (nonatomic,  setter=setPercentComplete:, getter=percentComplete) int percentComplete;

/** Property startDateTime
 *
 */
@property (nonatomic,  copy, setter=setStartDateTime:, getter=startDateTime) NSDate * startDateTime;

/** Property assignedDateTime
 *
 */
@property (nonatomic,  copy, setter=setAssignedDateTime:, getter=assignedDateTime) NSDate * assignedDateTime;

/** Property createdDateTime
 *
 */
@property (nonatomic,  copy, setter=setCreatedDateTime:, getter=createdDateTime) NSDate * createdDateTime;

/** Property assignedBy
 *
 */
@property (nonatomic,  copy, setter=setAssignedBy:, getter=assignedBy) NSString * assignedBy;

/** Property dueDateTime
 *
 */
@property (nonatomic,  copy, setter=setDueDateTime:, getter=dueDateTime) NSDate * dueDateTime;

/** Property hasDescription
 *
 */
@property (nonatomic,  setter=setHasDescription:, getter=hasDescription) bool hasDescription;

/** Property previewType
 *
 */
@property (nonatomic,  setter=setPreviewType:, getter=previewType) MSGraphPreviewType previewType;

- (void)setPreviewTypeString:(NSString *)string;

/** Property completedDateTime
 *
 */
@property (nonatomic,  copy, setter=setCompletedDateTime:, getter=completedDateTime) NSDate * completedDateTime;

/** Property appliedCategories
 *
 */
@property (nonatomic,  copy, setter=setAppliedCategories:, getter=appliedCategories) MSGraphAppliedCategoriesCollection * appliedCategories;

/** Property conversationThreadId
 *
 */
@property (nonatomic,  copy, setter=setConversationThreadId:, getter=conversationThreadId) NSString * conversationThreadId;

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property details
 *
 */
@property (nonatomic,  copy, setter=setDetails:, getter=details) MSGraphTaskDetails * details;

/** Property assignedToTaskBoardFormat
 *
 */
@property (nonatomic,  copy, setter=setAssignedToTaskBoardFormat:, getter=assignedToTaskBoardFormat) MSGraphTaskBoardTaskFormat * assignedToTaskBoardFormat;

/** Property progressTaskBoardFormat
 *
 */
@property (nonatomic,  copy, setter=setProgressTaskBoardFormat:, getter=progressTaskBoardFormat) MSGraphTaskBoardTaskFormat * progressTaskBoardFormat;

/** Property bucketTaskBoardFormat
 *
 */
@property (nonatomic,  copy, setter=setBucketTaskBoardFormat:, getter=bucketTaskBoardFormat) MSGraphTaskBoardTaskFormat * bucketTaskBoardFormat;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
