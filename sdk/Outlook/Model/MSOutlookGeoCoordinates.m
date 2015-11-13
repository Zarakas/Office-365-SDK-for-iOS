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



#import "MSOutlookModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOutlookGeoCoordinates
 *
 */
@implementation MSOutlookGeoCoordinates


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Altitude", @"altitude", @"Latitude", @"latitude", @"Longitude", @"longitude", @"Accuracy", @"accuracy", @"AltitudeAccuracy", @"altitudeAccuracy", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.GeoCoordinates";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_altitude = [dic objectForKey: @"Altitude"] != nil ? [[dic objectForKey: @"Altitude"] doubleValue] : _altitude;
		_latitude = [dic objectForKey: @"Latitude"] != nil ? [[dic objectForKey: @"Latitude"] doubleValue] : _latitude;
		_longitude = [dic objectForKey: @"Longitude"] != nil ? [[dic objectForKey: @"Longitude"] doubleValue] : _longitude;
		_accuracy = [dic objectForKey: @"Accuracy"] != nil ? [[dic objectForKey: @"Accuracy"] doubleValue] : _accuracy;
		_altitudeAccuracy = [dic objectForKey: @"AltitudeAccuracy"] != nil ? [[dic objectForKey: @"AltitudeAccuracy"] doubleValue] : _altitudeAccuracy;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [NSNumber numberWithDouble: self.altitude] forKey: @"Altitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.latitude] forKey: @"Latitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.longitude] forKey: @"Longitude"];}
	{[dic setValue: [NSNumber numberWithDouble: self.accuracy] forKey: @"Accuracy"];}
	{[dic setValue: [NSNumber numberWithDouble: self.altitudeAccuracy] forKey: @"AltitudeAccuracy"];}
    [dic setValue: @"#Microsoft.OutlookServices.GeoCoordinates" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.altitude;
    if([self.updatedValues containsObject:@"Altitude"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithDouble: curVal] forKey: @"Altitude"];
            }
    }
	{id curVal = self.latitude;
    if([self.updatedValues containsObject:@"Latitude"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithDouble: curVal] forKey: @"Latitude"];
            }
    }
	{id curVal = self.longitude;
    if([self.updatedValues containsObject:@"Longitude"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithDouble: curVal] forKey: @"Longitude"];
            }
    }
	{id curVal = self.accuracy;
    if([self.updatedValues containsObject:@"Accuracy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithDouble: curVal] forKey: @"Accuracy"];
            }
    }
	{id curVal = self.altitudeAccuracy;
    if([self.updatedValues containsObject:@"AltitudeAccuracy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithDouble: curVal] forKey: @"AltitudeAccuracy"];
            }
    }
    return dic;
}


/** Setter implementation for property altitude
 *
 */
- (void) setAltitude: (double) value {
    _altitude = value;
    [self valueChangedFor:@"Altitude"];
}
       
/** Setter implementation for property latitude
 *
 */
- (void) setLatitude: (double) value {
    _latitude = value;
    [self valueChangedFor:@"Latitude"];
}
       
/** Setter implementation for property longitude
 *
 */
- (void) setLongitude: (double) value {
    _longitude = value;
    [self valueChangedFor:@"Longitude"];
}
       
/** Setter implementation for property accuracy
 *
 */
- (void) setAccuracy: (double) value {
    _accuracy = value;
    [self valueChangedFor:@"Accuracy"];
}
       
/** Setter implementation for property altitudeAccuracy
 *
 */
- (void) setAltitudeAccuracy: (double) value {
    _altitudeAccuracy = value;
    [self valueChangedFor:@"AltitudeAccuracy"];
}
       

@end
