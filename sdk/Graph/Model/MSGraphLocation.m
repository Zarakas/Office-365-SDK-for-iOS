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


/** Implementation for MSGraphLocation
 *
 */
@implementation MSGraphLocation


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"DisplayName", @"displayName", @"LocationEmailAddress", @"locationEmailAddress", @"Address", @"address", @"Coordinates", @"coordinates", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.Location";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_displayName = [dic objectForKey: @"DisplayName"] != nil ? [[dic objectForKey: @"DisplayName"] copy] : _displayName;
		_locationEmailAddress = [dic objectForKey: @"LocationEmailAddress"] != nil ? [[dic objectForKey: @"LocationEmailAddress"] copy] : _locationEmailAddress;
		_address = [dic objectForKey: @"Address"] != nil ? [[MSGraphPhysicalAddress alloc] initWithDictionary: [dic objectForKey: @"Address"]] : _address;
		_coordinates = [dic objectForKey: @"Coordinates"] != nil ? [[MSGraphOutlookGeoCoordinates alloc] initWithDictionary: [dic objectForKey: @"Coordinates"]] : _coordinates;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.displayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"DisplayName"];}
	{id curVal = [self.locationEmailAddress copy];if (curVal!=nil) [dic setValue: curVal forKey: @"LocationEmailAddress"];}
	{id curVal = [self.address toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Address"];}
	{id curVal = [self.coordinates toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Coordinates"];}
    [dic setValue: @"#microsoft.graph.Location" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"DisplayName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"DisplayName"];
            }
    }
	{id curVal = self.locationEmailAddress;
    if([self.updatedValues containsObject:@"LocationEmailAddress"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"LocationEmailAddress"];
            }
    }
	{id curVal = self.address;
    if([self.updatedValues containsObject:@"Address"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Address"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Address"];
            }
        
            }}
	{id curVal = self.coordinates;
    if([self.updatedValues containsObject:@"Coordinates"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Coordinates"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Coordinates"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"DisplayName"];
}
       
/** Setter implementation for property locationEmailAddress
 *
 */
- (void) setLocationEmailAddress: (NSString *) value {
    _locationEmailAddress = value;
    [self valueChangedFor:@"LocationEmailAddress"];
}
       
/** Setter implementation for property address
 *
 */
- (void) setAddress: (MSGraphPhysicalAddress *) value {
    _address = value;
    [self valueChangedFor:@"Address"];
}
       
/** Setter implementation for property coordinates
 *
 */
- (void) setCoordinates: (MSGraphOutlookGeoCoordinates *) value {
    _coordinates = value;
    [self valueChangedFor:@"Coordinates"];
}
       

@end
