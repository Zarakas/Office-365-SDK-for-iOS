/*******************************************************************************
Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the MIT or Apache License; see LICENSE in the source repository
root for authoritative license information.﻿

**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).
******************************************************************************/

#import "MSOneNoteODataEntities.h"

@implementation MSOneNoteSectionGroupFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSODataExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOneNoteSectionGroup class]]) {

		_operations = [[MSOneNoteSectionGroupOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (NSURLSessionTask *)updateSectionGroup:(id)entity callback:(void (^)(MSOneNoteSectionGroup *sectionGroup, MSODataException *exception))callback {

	return [super updateEntity:entity callback:callback];
}

- (NSURLSessionTask *)deleteSectionGroup:(void (^)(int status, MSODataException *exception))callback {

	return [super deleteWithCallback:callback];
}

- (MSOneNoteNotebookFetcher *) getparentNotebook {

	 return [[MSOneNoteNotebookFetcher alloc] initWithUrl:@"parentNotebook" parent:self asClass:[MSOneNoteNotebook class]];
}

- (MSOneNoteSectionGroupFetcher *) getparentSectionGroup {

	 return [[MSOneNoteSectionGroupFetcher alloc] initWithUrl:@"parentSectionGroup" parent:self asClass:[MSOneNoteSectionGroup class]];
}

- (MSOneNoteSectionCollectionFetcher *)getsections {

    return [[MSOneNoteSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSOneNoteSection class]];
}

- (id<MSOneNoteSectionFetcher>)getsectionsById:(NSString *)_id {

    return [[[MSOneNoteSectionCollectionFetcher alloc] initWithUrl:@"sections" parent:self asClass:[MSOneNoteSection class]] getById:_id];
}

- (MSOneNoteSectionGroupCollectionFetcher *)getsectionGroups {

    return [[MSOneNoteSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSOneNoteSectionGroup class]];
}

- (id<MSOneNoteSectionGroupFetcher>)getsectionGroupsById:(NSString *)_id {

    return [[[MSOneNoteSectionGroupCollectionFetcher alloc] initWithUrl:@"sectionGroups" parent:self asClass:[MSOneNoteSectionGroup class]] getById:_id];
}

@end