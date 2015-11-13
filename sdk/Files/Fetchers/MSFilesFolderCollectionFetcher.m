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



#import "MSFilesFetchers.h"

@implementation MSFilesFolderCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSFilesFolder class]];
}

- (void)add:(MSFilesFolder*)entity callback:(void (^)(MSFilesFolder *mSFilesFolder, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSFilesFolderFetcher *)getById:(id) identifier {

    return [[MSFilesFolderFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" , identifier] parent:self];
}

- (MSFilesFolderCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSFilesFolderCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end
