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


/** Implementation for MSGraphShare
 *
 */
@implementation MSGraphShare


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"name", @"name", @"owner", @"owner", @"items", @"items", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.share";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;
		_name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : _name;
		_owner = [dic objectForKey: @"owner"] != nil ? [[MSGraphIdentitySet alloc] initWithDictionary: [dic objectForKey: @"owner"]] : _owner;

        if([dic objectForKey: @"items"] != [NSNull null]){
            _items = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"items"]) {
                [_items addObject:[[MSGraphItem alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_items resetChangedFlag];
        }
        

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{id curVal = [self.owner toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"owner"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.items) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"items"];}
    [dic setValue: @"#microsoft.graph.share" forKey: @"@odata.type"];

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
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
            }
    }
	{id curVal = self.owner;
    if([self.updatedValues containsObject:@"owner"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"owner"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"owner"];
            }
        
            }}
	{id curVal = self.items;
    if([self.updatedValues containsObject:@"items"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"items"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.items) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"items"];
        }
        
            }}
    return dic;
}


/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property owner
 *
 */
- (void) setOwner: (MSGraphIdentitySet *) value {
    _owner = value;
    [self valueChangedFor:@"owner"];
}
       
/** Setter implementation for property items
 *
 */
- (void) setItems: (NSMutableArray *) value {
    _items = value;
    [self valueChangedFor:@"items"];
}
       

@end
