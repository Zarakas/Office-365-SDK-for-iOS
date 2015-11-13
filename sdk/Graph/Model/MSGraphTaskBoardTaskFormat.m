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


/** Implementation for MSGraphTaskBoardTaskFormat
 *
 */
@implementation MSGraphTaskBoardTaskFormat


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"type", @"type", @"orderHint", @"orderHint", @"id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.taskBoardTaskFormat";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_type = [dic objectForKey: @"type"] != nil ? [MSGraphTaskBoardTypeSerializer fromString:[dic objectForKey: @"type"]] : _type;
		_orderHint = [dic objectForKey: @"orderHint"] != nil ? [[dic objectForKey: @"orderHint"] copy] : _orderHint;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [MSGraphTaskBoardTypeSerializer toString:self.type] forKey: @"type"];}
	{id curVal = [self.orderHint copy];if (curVal!=nil) [dic setValue: curVal forKey: @"orderHint"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.taskBoardTaskFormat" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"type"])
            { [dic setValue: [MSGraphTaskBoardTypeSerializer toString:self.type] forKey: @"type"];
}	{id curVal = self.orderHint;
    if([self.updatedValues containsObject:@"orderHint"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"orderHint"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphTaskBoardType) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphTaskBoardTypeSerializer fromString:string];
    [self valueChangedFor:@"type"]; 
}

/** Setter implementation for property orderHint
 *
 */
- (void) setOrderHint: (NSString *) value {
    _orderHint = value;
    [self valueChangedFor:@"orderHint"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       

@end
