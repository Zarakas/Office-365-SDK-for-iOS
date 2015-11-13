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



/** Implementation for MSGraphResource
 *
 */
@implementation MSGraphResource


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"self", @"_self", @"content", @"content", @"contentUrl", @"contentUrl", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.Resource";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		__self = [dic objectForKey: @"self"] != nil ? [[dic objectForKey: @"self"] copy] : __self;
		_content = [dic objectForKey: @"content"] != nil ? nil/*NSStream*/ : _content;
		_contentUrl = [dic objectForKey: @"contentUrl"] != nil ? [[dic objectForKey: @"contentUrl"] copy] : _contentUrl;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self._self copy];if (curVal!=nil) [dic setValue: curVal forKey: @"self"];}
	{id curVal = nil/*NSStream*/;if (curVal!=nil) [dic setValue: curVal forKey: @"content"];}
	{id curVal = [self.contentUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"contentUrl"];}
    [dic setValue: @"#microsoft.graph.Resource" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
	{id curVal = self._self;
    if([self.updatedValues containsObject:@"self"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"self"];
            }
    }
	{id curVal = self.content;
    if([self.updatedValues containsObject:@"content"])
    {
                [dic setValue: curVal==nil?[NSNull null]:nil/*NSStream*/ forKey: @"content"];
            }
    }
	{id curVal = self.contentUrl;
    if([self.updatedValues containsObject:@"contentUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"contentUrl"];
            }
    }
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property _self
 *
 */
- (void) setSelf: (NSString *) value {
    __self = value;
    [self valueChangedFor:@"self"];
}
       
/** Setter implementation for property content
 *
 */
- (void) setContent: (NSStream *) value {
    _content = value;
    [self valueChangedFor:@"content"];
}
       
/** Setter implementation for property contentUrl
 *
 */
- (void) setContentUrl: (NSString *) value {
    _contentUrl = value;
    [self valueChangedFor:@"contentUrl"];
}
       

@end
