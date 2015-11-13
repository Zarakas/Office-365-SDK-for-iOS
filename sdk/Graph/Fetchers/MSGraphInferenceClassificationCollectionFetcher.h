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


#ifndef MSGRAPHINFERENCECLASSIFICATIONCOLLECTIONFETCHER_H
#define MSGRAPHINFERENCECLASSIFICATIONCOLLECTIONFETCHER_H

@class MSGraphInferenceClassificationFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSGraphModels.h"

/** MSGraphInferenceClassificationCollectionFetcher
 *
 */
@interface MSGraphInferenceClassificationCollectionFetcher : MSOrcCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback;

- (MSGraphInferenceClassificationFetcher *)getById: (id) identifier;
- (void)add:(MSGraphInferenceClassification *)entity callback:(void (^)(MSGraphInferenceClassification *, MSOrcError *))callback;

- (MSGraphInferenceClassificationCollectionFetcher *)select:(NSString *)params;
- (MSGraphInferenceClassificationCollectionFetcher *)filter:(NSString *)params;
- (MSGraphInferenceClassificationCollectionFetcher *)search:(NSString *)params;
- (MSGraphInferenceClassificationCollectionFetcher *)top:(int)value;
- (MSGraphInferenceClassificationCollectionFetcher *)skip:(int)value;
- (MSGraphInferenceClassificationCollectionFetcher *)expand:(NSString *)value;
- (MSGraphInferenceClassificationCollectionFetcher *)orderBy:(NSString *)params;
- (MSGraphInferenceClassificationCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSGraphInferenceClassificationCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
