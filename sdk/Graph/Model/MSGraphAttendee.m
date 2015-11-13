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


/** Implementation for MSGraphAttendee
 *
 */
@implementation MSGraphAttendee


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Status", @"status", @"Type", @"type", @"EmailAddress", @"emailAddress", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.Attendee";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_status = [dic objectForKey: @"Status"] != nil ? [[MSGraphResponseStatus alloc] initWithDictionary: [dic objectForKey: @"Status"]] : _status;
		_type = [dic objectForKey: @"Type"] != nil ? [MSGraphAttendeeTypeSerializer fromString:[dic objectForKey: @"Type"]] : _type;
		_emailAddress = [dic objectForKey: @"EmailAddress"] != nil ? [[MSGraphEmailAddress alloc] initWithDictionary: [dic objectForKey: @"EmailAddress"]] : _emailAddress;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.status toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Status"];}
	{[dic setValue: [MSGraphAttendeeTypeSerializer toString:self.type] forKey: @"Type"];}
	{id curVal = [self.emailAddress toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"EmailAddress"];}
    [dic setValue: @"#microsoft.graph.Attendee" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.status;
    if([self.updatedValues containsObject:@"Status"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Status"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Status"];
            }
        
            }}
 if([self.updatedValues containsObject:@"Type"])
            { [dic setValue: [MSGraphAttendeeTypeSerializer toString:self.type] forKey: @"Type"];
}	{id curVal = self.emailAddress;
    if([self.updatedValues containsObject:@"EmailAddress"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"EmailAddress"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"EmailAddress"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property status
 *
 */
- (void) setStatus: (MSGraphResponseStatus *) value {
    _status = value;
    [self valueChangedFor:@"Status"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphAttendeeType) value {
    _type = value;
    [self valueChangedFor:@"Type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphAttendeeTypeSerializer fromString:string];
    [self valueChangedFor:@"Type"]; 
}

/** Setter implementation for property emailAddress
 *
 */
- (void) setEmailAddress: (MSGraphEmailAddress *) value {
    _emailAddress = value;
    [self valueChangedFor:@"EmailAddress"];
}
       

@end
