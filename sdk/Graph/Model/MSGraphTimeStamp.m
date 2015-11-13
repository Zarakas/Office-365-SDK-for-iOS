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


/** Implementation for MSGraphTimeStamp
 *
 */
@implementation MSGraphTimeStamp


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Date", @"date", @"Time", @"time", @"TimeZone", @"timeZone", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.TimeStamp";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_date = [dic objectForKey: @"Date"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"Date"]] : _date;
		_time = [dic objectForKey: @"Time"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"Time"]] : _time;
		_timeZone = [dic objectForKey: @"TimeZone"] != nil ? [[dic objectForKey: @"TimeZone"] copy] : _timeZone;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.date];if (curVal!=nil) [dic setValue: curVal forKey: @"Date"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.time];if (curVal!=nil) [dic setValue: curVal forKey: @"Time"];}
	{id curVal = [self.timeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"TimeZone"];}
    [dic setValue: @"#microsoft.graph.TimeStamp" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.date;
    if([self.updatedValues containsObject:@"Date"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"Date"];
            }
    }
	{id curVal = self.time;
    if([self.updatedValues containsObject:@"Time"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"Time"];
            }
    }
	{id curVal = self.timeZone;
    if([self.updatedValues containsObject:@"TimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"TimeZone"];
            }
    }
    return dic;
}


/** Setter implementation for property date
 *
 */
- (void) setDate: (NSDate *) value {
    _date = value;
    [self valueChangedFor:@"Date"];
}
       
/** Setter implementation for property time
 *
 */
- (void) setTime: (NSDate *) value {
    _time = value;
    [self valueChangedFor:@"Time"];
}
       
/** Setter implementation for property timeZone
 *
 */
- (void) setTimeZone: (NSString *) value {
    _timeZone = value;
    [self valueChangedFor:@"TimeZone"];
}
       

@end
