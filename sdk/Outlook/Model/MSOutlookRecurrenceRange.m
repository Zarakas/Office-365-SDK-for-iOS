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


/** Implementation for MSOutlookRecurrenceRange
 *
 */
@implementation MSOutlookRecurrenceRange


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Type", @"type", @"StartDate", @"startDate", @"EndDate", @"endDate", @"RecurrenceTimeZone", @"recurrenceTimeZone", @"NumberOfOccurrences", @"numberOfOccurrences", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.RecurrenceRange";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_type = [dic objectForKey: @"Type"] != nil ? [MSOutlookRecurrenceRangeTypeSerializer fromString:[dic objectForKey: @"Type"]] : _type;
		_startDate = [dic objectForKey: @"StartDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"StartDate"]] : _startDate;
		_endDate = [dic objectForKey: @"EndDate"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"EndDate"]] : _endDate;
		_recurrenceTimeZone = [dic objectForKey: @"RecurrenceTimeZone"] != nil ? [[dic objectForKey: @"RecurrenceTimeZone"] copy] : _recurrenceTimeZone;
		_numberOfOccurrences = [dic objectForKey: @"NumberOfOccurrences"] != nil ? [[dic objectForKey: @"NumberOfOccurrences"] intValue] : _numberOfOccurrences;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [MSOutlookRecurrenceRangeTypeSerializer toString:self.type] forKey: @"Type"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.startDate];if (curVal!=nil) [dic setValue: curVal forKey: @"StartDate"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.endDate];if (curVal!=nil) [dic setValue: curVal forKey: @"EndDate"];}
	{id curVal = [self.recurrenceTimeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"RecurrenceTimeZone"];}
	{[dic setValue: [NSNumber numberWithInt: self.numberOfOccurrences] forKey: @"NumberOfOccurrences"];}
    [dic setValue: @"#Microsoft.OutlookServices.RecurrenceRange" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"Type"])
            { [dic setValue: [MSOutlookRecurrenceRangeTypeSerializer toString:self.type] forKey: @"Type"];
}	{id curVal = self.startDate;
    if([self.updatedValues containsObject:@"StartDate"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"StartDate"];
            }
    }
	{id curVal = self.endDate;
    if([self.updatedValues containsObject:@"EndDate"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"EndDate"];
            }
    }
	{id curVal = self.recurrenceTimeZone;
    if([self.updatedValues containsObject:@"RecurrenceTimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"RecurrenceTimeZone"];
            }
    }
 if([self.updatedValues containsObject:@"NumberOfOccurrences"])
            { [dic setValue: [NSNumber numberWithInt: self.numberOfOccurrences] forKey: @"NumberOfOccurrences"];
}    return dic;
}


/** Setter implementation for property type
 *
 */
- (void) setType: (MSOutlookRecurrenceRangeType) value {
    _type = value;
    [self valueChangedFor:@"Type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSOutlookRecurrenceRangeTypeSerializer fromString:string];
    [self valueChangedFor:@"Type"]; 
}

/** Setter implementation for property startDate
 *
 */
- (void) setStartDate: (NSDate *) value {
    _startDate = value;
    [self valueChangedFor:@"StartDate"];
}
       
/** Setter implementation for property endDate
 *
 */
- (void) setEndDate: (NSDate *) value {
    _endDate = value;
    [self valueChangedFor:@"EndDate"];
}
       
/** Setter implementation for property recurrenceTimeZone
 *
 */
- (void) setRecurrenceTimeZone: (NSString *) value {
    _recurrenceTimeZone = value;
    [self valueChangedFor:@"RecurrenceTimeZone"];
}
       
/** Setter implementation for property numberOfOccurrences
 *
 */
- (void) setNumberOfOccurrences: (int) value {
    _numberOfOccurrences = value;
    [self valueChangedFor:@"NumberOfOccurrences"];
}
       

@end
