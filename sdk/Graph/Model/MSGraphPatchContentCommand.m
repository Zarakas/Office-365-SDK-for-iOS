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


/** Implementation for MSGraphPatchContentCommand
 *
 */
@implementation MSGraphPatchContentCommand


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"action", @"action", @"target", @"target", @"content", @"content", @"position", @"position", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.PatchContentCommand";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_action = [dic objectForKey: @"action"] != nil ? [MSGraphPatchActionTypeSerializer fromString:[dic objectForKey: @"action"]] : _action;
		_target = [dic objectForKey: @"target"] != nil ? [[dic objectForKey: @"target"] copy] : _target;
		_content = [dic objectForKey: @"content"] != nil ? [[dic objectForKey: @"content"] copy] : _content;
		_position = [dic objectForKey: @"position"] != nil ? [MSGraphPatchInsertPositionSerializer fromString:[dic objectForKey: @"position"]] : _position;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [MSGraphPatchActionTypeSerializer toString:self.action] forKey: @"action"];}
	{id curVal = [self.target copy];if (curVal!=nil) [dic setValue: curVal forKey: @"target"];}
	{id curVal = [self.content copy];if (curVal!=nil) [dic setValue: curVal forKey: @"content"];}
	{[dic setValue: [MSGraphPatchInsertPositionSerializer toString:self.position] forKey: @"position"];}
    [dic setValue: @"#microsoft.graph.PatchContentCommand" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"action"])
            { [dic setValue: [MSGraphPatchActionTypeSerializer toString:self.action] forKey: @"action"];
}	{id curVal = self.target;
    if([self.updatedValues containsObject:@"target"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"target"];
            }
    }
	{id curVal = self.content;
    if([self.updatedValues containsObject:@"content"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"content"];
            }
    }
 if([self.updatedValues containsObject:@"position"])
            { [dic setValue: [MSGraphPatchInsertPositionSerializer toString:self.position] forKey: @"position"];
}    return dic;
}


/** Setter implementation for property action
 *
 */
- (void) setAction: (MSGraphPatchActionType) value {
    _action = value;
    [self valueChangedFor:@"action"];
}
       

- (void)setActionString:(NSString *)string {
        
    _action = [MSGraphPatchActionTypeSerializer fromString:string];
    [self valueChangedFor:@"action"]; 
}

/** Setter implementation for property target
 *
 */
- (void) setTarget: (NSString *) value {
    _target = value;
    [self valueChangedFor:@"target"];
}
       
/** Setter implementation for property content
 *
 */
- (void) setContent: (NSString *) value {
    _content = value;
    [self valueChangedFor:@"content"];
}
       
/** Setter implementation for property position
 *
 */
- (void) setPosition: (MSGraphPatchInsertPosition) value {
    _position = value;
    [self valueChangedFor:@"position"];
}
       

- (void)setPositionString:(NSString *)string {
        
    _position = [MSGraphPatchInsertPositionSerializer fromString:string];
    [self valueChangedFor:@"position"]; 
}


@end
