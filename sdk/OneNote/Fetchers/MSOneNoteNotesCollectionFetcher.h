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


#ifndef MSONENOTENOTESCOLLECTIONFETCHER_H
#define MSONENOTENOTESCOLLECTIONFETCHER_H

@class MSOneNoteNotesFetcher;

#import "core/MSOrcCollectionFetcher.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOneNoteModels.h"

/** MSOneNoteNotesCollectionFetcher
 *
 */
@interface MSOneNoteNotesCollectionFetcher : MSOrcMultipartCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent;

- (MSOneNoteNotesFetcher *)getById: (id) identifier;
- (void)add:(MSOneNoteNotes *)entity callback:(void (^)(MSOneNoteNotes *, MSOrcError *))callback;

- (MSOneNoteNotesCollectionFetcher *)select:(NSString *)params;
- (MSOneNoteNotesCollectionFetcher *)filter:(NSString *)params;
- (MSOneNoteNotesCollectionFetcher *)search:(NSString *)params;
- (MSOneNoteNotesCollectionFetcher *)top:(int)value;
- (MSOneNoteNotesCollectionFetcher *)skip:(int)value;
- (MSOneNoteNotesCollectionFetcher *)expand:(NSString *)value;
- (MSOneNoteNotesCollectionFetcher *)orderBy:(NSString *)params;
- (MSOneNoteNotesCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOneNoteNotesCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;

@end

#endif
