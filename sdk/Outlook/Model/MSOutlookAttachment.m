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


/** Implementation for MSOutlookAttachment
 *
 */
@implementation MSOutlookAttachment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"LastModifiedDateTime", @"lastModifiedDateTime", @"Name", @"name", @"ContentType", @"contentType", @"Size", @"size", @"IsInline", @"isInline", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Attachment";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_lastModifiedDateTime = [dic objectForKey: @"LastModifiedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]] : _lastModifiedDateTime;
		_name = [dic objectForKey: @"Name"] != nil ? [[dic objectForKey: @"Name"] copy] : _name;
		_contentType = [dic objectForKey: @"ContentType"] != nil ? [[dic objectForKey: @"ContentType"] copy] : _contentType;
		_size = [dic objectForKey: @"Size"] != nil ? [[dic objectForKey: @"Size"] intValue] : _size;
		_isInline = [dic objectForKey: @"IsInline"] != nil ? [[dic objectForKey: @"IsInline"] boolValue] : _isInline;
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Name"];}
	{id curVal = [self.contentType copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ContentType"];}
	{[dic setValue: [NSNumber numberWithInt: self.size] forKey: @"Size"];}
	{[dic setValue: (self.isInline?@"true":@"false") forKey: @"IsInline"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Attachment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
            }
    }
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"Name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Name"];
            }
    }
	{id curVal = self.contentType;
    if([self.updatedValues containsObject:@"ContentType"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ContentType"];
            }
    }
 if([self.updatedValues containsObject:@"Size"])
            { [dic setValue: [NSNumber numberWithInt: self.size] forKey: @"Size"];
} if([self.updatedValues containsObject:@"IsInline"])
            { [dic setValue: (self.isInline?@"true":@"false") forKey: @"IsInline"];
}	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property lastModifiedDateTime
 *
 */
- (void) setLastModifiedDateTime: (NSDate *) value {
    _lastModifiedDateTime = value;
    [self valueChangedFor:@"LastModifiedDateTime"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"Name"];
}
       
/** Setter implementation for property contentType
 *
 */
- (void) setContentType: (NSString *) value {
    _contentType = value;
    [self valueChangedFor:@"ContentType"];
}
       
/** Setter implementation for property size
 *
 */
- (void) setSize: (int) value {
    _size = value;
    [self valueChangedFor:@"Size"];
}
       
/** Setter implementation for property isInline
 *
 */
- (void) setIsInline: (bool) value {
    _isInline = value;
    [self valueChangedFor:@"IsInline"];
}
       

@end
