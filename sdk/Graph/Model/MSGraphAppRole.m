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


/** Implementation for MSGraphAppRole
 *
 */
@implementation MSGraphAppRole


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"allowedMemberTypes", @"allowedMemberTypes", @"description", @"_description", @"displayName", @"displayName", @"id", @"_id", @"isEnabled", @"isEnabled", @"value", @"value", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.AppRole";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    

        if([dic objectForKey: @"allowedMemberTypes"] != [NSNull null]){
            _allowedMemberTypes = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"allowedMemberTypes"]) {
                [_allowedMemberTypes addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)_allowedMemberTypes resetChangedFlag];
        }
        
		__description = [dic objectForKey: @"description"] != nil ? [[dic objectForKey: @"description"] copy] : __description;
		_displayName = [dic objectForKey: @"displayName"] != nil ? [[dic objectForKey: @"displayName"] copy] : _displayName;
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_isEnabled = [dic objectForKey: @"isEnabled"] != nil ? [[dic objectForKey: @"isEnabled"] boolValue] : _isEnabled;
		_value = [dic objectForKey: @"value"] != nil ? [[dic objectForKey: @"value"] copy] : _value;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.allowedMemberTypes) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"allowedMemberTypes"];}
	{id curVal = [self._description copy];if (curVal!=nil) [dic setValue: curVal forKey: @"description"];}
	{id curVal = [self.displayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"displayName"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{[dic setValue: (self.isEnabled?@"true":@"false") forKey: @"isEnabled"];}
	{id curVal = [self.value copy];if (curVal!=nil) [dic setValue: curVal forKey: @"value"];}
    [dic setValue: @"#microsoft.graph.AppRole" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.allowedMemberTypes;
    if([self.updatedValues containsObject:@"allowedMemberTypes"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"allowedMemberTypes"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.allowedMemberTypes) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"allowedMemberTypes"];
        }
        
            }}
	{id curVal = self._description;
    if([self.updatedValues containsObject:@"description"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"description"];
            }
    }
	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"displayName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"displayName"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
 if([self.updatedValues containsObject:@"isEnabled"])
            { [dic setValue: (self.isEnabled?@"true":@"false") forKey: @"isEnabled"];
}	{id curVal = self.value;
    if([self.updatedValues containsObject:@"value"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"value"];
            }
    }
    return dic;
}


/** Setter implementation for property allowedMemberTypes
 *
 */
- (void) setAllowedMemberTypes: (NSMutableArray *) value {
    _allowedMemberTypes = value;
    [self valueChangedFor:@"allowedMemberTypes"];
}
       
/** Setter implementation for property _description
 *
 */
- (void) setDescription: (NSString *) value {
    __description = value;
    [self valueChangedFor:@"description"];
}
       
/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"displayName"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property isEnabled
 *
 */
- (void) setIsEnabled: (bool) value {
    _isEnabled = value;
    [self valueChangedFor:@"isEnabled"];
}
       
/** Setter implementation for property value
 *
 */
- (void) setValue: (NSString *) value {
    _value = value;
    [self valueChangedFor:@"value"];
}
       

@end
