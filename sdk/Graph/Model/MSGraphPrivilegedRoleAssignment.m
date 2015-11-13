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



/** Implementation for MSGraphPrivilegedRoleAssignment
 *
 */
@implementation MSGraphPrivilegedRoleAssignment


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"UserId", @"userId", @"RoleId", @"roleId", @"IsElevated", @"isElevated", @"ExpirationTime", @"expirationTime", @"ResultMessage", @"resultMessage", @"RoleInfo", @"roleInfo", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.PrivilegedRoleAssignment";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_userId = [dic objectForKey: @"UserId"] != nil ? [[dic objectForKey: @"UserId"] copy] : _userId;
		_roleId = [dic objectForKey: @"RoleId"] != nil ? [[dic objectForKey: @"RoleId"] copy] : _roleId;
		_isElevated = [dic objectForKey: @"IsElevated"] != nil ? [[dic objectForKey: @"IsElevated"] boolValue] : _isElevated;
		_expirationTime = [dic objectForKey: @"ExpirationTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"ExpirationTime"]] : _expirationTime;
		_resultMessage = [dic objectForKey: @"ResultMessage"] != nil ? [[dic objectForKey: @"ResultMessage"] copy] : _resultMessage;
		_roleInfo = [dic objectForKey: @"RoleInfo"] != nil ? [[MSGraphPrivilegedRole alloc] initWithDictionary: [dic objectForKey: @"RoleInfo"]] : _roleInfo;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.userId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"UserId"];}
	{id curVal = [self.roleId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"RoleId"];}
	{[dic setValue: (self.isElevated?@"true":@"false") forKey: @"IsElevated"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.expirationTime];if (curVal!=nil) [dic setValue: curVal forKey: @"ExpirationTime"];}
	{id curVal = [self.resultMessage copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ResultMessage"];}
	{id curVal = [self.roleInfo toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"RoleInfo"];}
    [dic setValue: @"#microsoft.graph.PrivilegedRoleAssignment" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.userId;
    if([self.updatedValues containsObject:@"UserId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"UserId"];
            }
    }
	{id curVal = self.roleId;
    if([self.updatedValues containsObject:@"RoleId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"RoleId"];
            }
    }
	{id curVal = self.isElevated;
    if([self.updatedValues containsObject:@"IsElevated"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsElevated"];
            }
    }
	{id curVal = self.expirationTime;
    if([self.updatedValues containsObject:@"ExpirationTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"ExpirationTime"];
            }
    }
	{id curVal = self.resultMessage;
    if([self.updatedValues containsObject:@"ResultMessage"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ResultMessage"];
            }
    }
	{id curVal = self.roleInfo;
    if([self.updatedValues containsObject:@"RoleInfo"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"RoleInfo"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"RoleInfo"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property userId
 *
 */
- (void) setUserId: (NSString *) value {
    _userId = value;
    [self valueChangedFor:@"UserId"];
}
       
/** Setter implementation for property roleId
 *
 */
- (void) setRoleId: (NSString *) value {
    _roleId = value;
    [self valueChangedFor:@"RoleId"];
}
       
/** Setter implementation for property isElevated
 *
 */
- (void) setIsElevated: (bool) value {
    _isElevated = value;
    [self valueChangedFor:@"IsElevated"];
}
       
/** Setter implementation for property expirationTime
 *
 */
- (void) setExpirationTime: (NSDate *) value {
    _expirationTime = value;
    [self valueChangedFor:@"ExpirationTime"];
}
       
/** Setter implementation for property resultMessage
 *
 */
- (void) setResultMessage: (NSString *) value {
    _resultMessage = value;
    [self valueChangedFor:@"ResultMessage"];
}
       
/** Setter implementation for property roleInfo
 *
 */
- (void) setRoleInfo: (MSGraphPrivilegedRole *) value {
    _roleInfo = value;
    [self valueChangedFor:@"RoleInfo"];
}
       

@end
