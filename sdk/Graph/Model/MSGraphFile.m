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



#import "MSGraphModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphFile
 *
 */
@implementation MSGraphFile


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"hashes", @"hashes", @"mimeType", @"mimeType", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.file";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_hashes = [dic objectForKey: @"hashes"] != nil ? [[MSGraphHashes alloc] initWithDictionary: [dic objectForKey: @"hashes"]] : _hashes;
		_mimeType = [dic objectForKey: @"mimeType"] != nil ? [[dic objectForKey: @"mimeType"] copy] : _mimeType;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.hashes toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"hashes"];}
	{id curVal = [self.mimeType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"mimeType"];}
    [dic setValue: @"#microsoft.graph.file" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.hashes;
    if([self.updatedValues containsObject:@"hashes"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"hashes"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"hashes"];
            }
        
            }}
	{id curVal = self.mimeType;
    if([self.updatedValues containsObject:@"mimeType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"mimeType"];
            }
    }
    return dic;
}


/** Setter implementation for property hashes
 *
 */
- (void) setHashes: (MSGraphHashes *) value {
    _hashes = value;
    [self valueChangedFor:@"hashes"];
}
       
/** Setter implementation for property mimeType
 *
 */
- (void) setMimeType: (NSString *) value {
    _mimeType = value;
    [self valueChangedFor:@"mimeType"];
}
       

@end
