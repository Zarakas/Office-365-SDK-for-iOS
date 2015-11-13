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



/** Implementation for MSGraphPrivilegedSignupStatus
 *
 */
@implementation MSGraphPrivilegedSignupStatus


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"TenantId", @"tenantId", @"IsRegistered", @"isRegistered", @"Status", @"status", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.PrivilegedSignupStatus";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_tenantId = [dic objectForKey: @"TenantId"] != nil ? [[dic objectForKey: @"TenantId"] copy] : _tenantId;
		_isRegistered = [dic objectForKey: @"IsRegistered"] != nil ? [[dic objectForKey: @"IsRegistered"] boolValue] : _isRegistered;
		_status = [dic objectForKey: @"Status"] != nil ? [MSGraphSetupStatusSerializer fromString:[dic objectForKey: @"Status"]] : _status;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.tenantId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"TenantId"];}
	{[dic setValue: (self.isRegistered?@"true":@"false") forKey: @"IsRegistered"];}
	{[dic setValue: [MSGraphSetupStatusSerializer toString:self.status] forKey: @"Status"];}
    [dic setValue: @"#microsoft.graph.PrivilegedSignupStatus" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.tenantId;
    if([self.updatedValues containsObject:@"TenantId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"TenantId"];
            }
    }
	{id curVal = self.isRegistered;
    if([self.updatedValues containsObject:@"IsRegistered"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsRegistered"];
            }
    }
	{id curVal = self.status;
    if([self.updatedValues containsObject:@"Status"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSGraphSetupStatusSerializer toString:curVal] forKey: @"Status"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Status"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property tenantId
 *
 */
- (void) setTenantId: (NSString *) value {
    _tenantId = value;
    [self valueChangedFor:@"TenantId"];
}
       
/** Setter implementation for property isRegistered
 *
 */
- (void) setIsRegistered: (bool) value {
    _isRegistered = value;
    [self valueChangedFor:@"IsRegistered"];
}
       
/** Setter implementation for property status
 *
 */
- (void) setStatus: (MSGraphSetupStatus) value {
    _status = value;
    [self valueChangedFor:@"Status"];
}
       

- (void)setStatusString:(NSString *)string {
        
    _status = [MSGraphSetupStatusSerializer fromString:string];
    [self valueChangedFor:@"Status"]; 
}


@end
