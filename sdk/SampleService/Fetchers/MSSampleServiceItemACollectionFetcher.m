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



#import "MSSampleServiceFetchers.h"

@implementation MSSampleServiceItemACollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSSampleServiceItemA class]];
}

- (void)add:(MSSampleServiceItemA*)entity callback:(void (^)(MSSampleServiceItemA *mSSampleServiceItemA, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSSampleServiceItemAFetcher *)getById:(id) identifier {

    return [[MSSampleServiceItemAFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" , identifier] parent:self];
}

- (MSSampleServiceItemACollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSSampleServiceItemACollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end
