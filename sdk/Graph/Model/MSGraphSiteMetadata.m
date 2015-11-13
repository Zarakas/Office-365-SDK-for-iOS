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


/** Implementation for MSGraphSiteMetadata
 *
 */
@implementation MSGraphSiteMetadata


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"siteCollectionId", @"siteCollectionId", @"siteId", @"siteId", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.SiteMetadata";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_siteCollectionId = [dic objectForKey: @"siteCollectionId"] != nil ? [[dic objectForKey: @"siteCollectionId"] copy] : _siteCollectionId;
		_siteId = [dic objectForKey: @"siteId"] != nil ? [[dic objectForKey: @"siteId"] copy] : _siteId;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.siteCollectionId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"siteCollectionId"];}
	{id curVal = [self.siteId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"siteId"];}
    [dic setValue: @"#microsoft.graph.SiteMetadata" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.siteCollectionId;
    if([self.updatedValues containsObject:@"siteCollectionId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"siteCollectionId"];
            }
    }
	{id curVal = self.siteId;
    if([self.updatedValues containsObject:@"siteId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"siteId"];
            }
    }
    return dic;
}


/** Setter implementation for property siteCollectionId
 *
 */
- (void) setSiteCollectionId: (NSString *) value {
    _siteCollectionId = value;
    [self valueChangedFor:@"siteCollectionId"];
}
       
/** Setter implementation for property siteId
 *
 */
- (void) setSiteId: (NSString *) value {
    _siteId = value;
    [self valueChangedFor:@"siteId"];
}
       

@end
