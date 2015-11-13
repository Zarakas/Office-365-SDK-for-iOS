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



#import "MSDirectoryServicesFetchers.h"

@implementation MSDirectoryServicesTenantDetailCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSDirectoryServicesTenantDetail class]];
}

- (void)add:(MSDirectoryServicesTenantDetail*)entity callback:(void (^)(MSDirectoryServicesTenantDetail *mSDirectoryServicesTenantDetail, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSDirectoryServicesTenantDetailFetcher *)getById:(id) identifier {

    return [[MSDirectoryServicesTenantDetailFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" , identifier] parent:self];
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSDirectoryServicesTenantDetailCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end
