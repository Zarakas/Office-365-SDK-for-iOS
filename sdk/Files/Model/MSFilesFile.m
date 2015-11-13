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



#import "MSFilesModels.h"



/** Implementation for MSFilesFile
 *
 */
@implementation MSFilesFile


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"contentUrl", @"contentUrl", @"image", @"image", @"createdBy", @"createdBy", @"eTag", @"eTag", @"id", @"_id", @"lastModifiedBy", @"lastModifiedBy", @"name", @"name", @"parentReference", @"parentReference", @"size", @"size", @"dateTimeCreated", @"dateTimeCreated", @"dateTimeLastModified", @"dateTimeLastModified", @"type", @"type", @"webUrl", @"webUrl", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.FileServices.File";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_contentUrl = [dic objectForKey: @"contentUrl"] != nil ? [[dic objectForKey: @"contentUrl"] copy] : _contentUrl;
		_image = [dic objectForKey: @"image"] != nil ? [[MSFilesImageFacet alloc] initWithDictionary: [dic objectForKey: @"image"]] : _image;
		self.createdBy = [dic objectForKey: @"createdBy"] != nil ? [[MSFilesIdentitySet alloc] initWithDictionary: [dic objectForKey: @"createdBy"]] : self.createdBy;
		self.eTag = [dic objectForKey: @"eTag"] != nil ? [[dic objectForKey: @"eTag"] copy] : self.eTag;
		self._id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : self._id;
		self.lastModifiedBy = [dic objectForKey: @"lastModifiedBy"] != nil ? [[MSFilesIdentitySet alloc] initWithDictionary: [dic objectForKey: @"lastModifiedBy"]] : self.lastModifiedBy;
		self.name = [dic objectForKey: @"name"] != nil ? [[dic objectForKey: @"name"] copy] : self.name;
		self.parentReference = [dic objectForKey: @"parentReference"] != nil ? [[MSFilesItemReference alloc] initWithDictionary: [dic objectForKey: @"parentReference"]] : self.parentReference;
		self.size = [dic objectForKey: @"size"] != nil ? [[dic objectForKey: @"size"] longLongValue] : self.size;
		self.dateTimeCreated = [dic objectForKey: @"dateTimeCreated"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"dateTimeCreated"]] : self.dateTimeCreated;
		self.dateTimeLastModified = [dic objectForKey: @"dateTimeLastModified"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"dateTimeLastModified"]] : self.dateTimeLastModified;
		self.type = [dic objectForKey: @"type"] != nil ? [[dic objectForKey: @"type"] copy] : self.type;
		self.webUrl = [dic objectForKey: @"webUrl"] != nil ? [[dic objectForKey: @"webUrl"] copy] : self.webUrl;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.contentUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"contentUrl"];}
	{id curVal = [self.image toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"image"];}
	{id curVal = [self.createdBy toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"createdBy"];}
	{id curVal = [self.eTag copy];if (curVal!=nil) [dic setValue: curVal forKey: @"eTag"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self.lastModifiedBy toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedBy"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{id curVal = [self.parentReference toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"parentReference"];}
	{[dic setValue: [NSNumber numberWithLongLong: self.size] forKey: @"size"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.dateTimeCreated];if (curVal!=nil) [dic setValue: curVal forKey: @"dateTimeCreated"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.dateTimeLastModified];if (curVal!=nil) [dic setValue: curVal forKey: @"dateTimeLastModified"];}
	{id curVal = [self.type copy];if (curVal!=nil) [dic setValue: curVal forKey: @"type"];}
	{id curVal = [self.webUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"webUrl"];}
    [dic setValue: @"#Microsoft.FileServices.File" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.contentUrl;
    if([self.updatedValues containsObject:@"contentUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"contentUrl"];
            }
    }
	{id curVal = self.image;
    if([self.updatedValues containsObject:@"image"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"image"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"image"];
            }
        
            }}
	{id curVal = self.createdBy;
    if([self.updatedValues containsObject:@"createdBy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"createdBy"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"createdBy"];
            }
        
            }}
	{id curVal = self.eTag;
    if([self.updatedValues containsObject:@"eTag"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"eTag"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
	{id curVal = self.lastModifiedBy;
    if([self.updatedValues containsObject:@"lastModifiedBy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"lastModifiedBy"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"lastModifiedBy"];
            }
        
            }}
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
            }
    }
	{id curVal = self.parentReference;
    if([self.updatedValues containsObject:@"parentReference"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"parentReference"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"parentReference"];
            }
        
            }}
	{id curVal = self.size;
    if([self.updatedValues containsObject:@"size"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[NSNumber numberWithLongLong: curVal] forKey: @"size"];
            }
    }
	{id curVal = self.dateTimeCreated;
    if([self.updatedValues containsObject:@"dateTimeCreated"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"dateTimeCreated"];
            }
    }
	{id curVal = self.dateTimeLastModified;
    if([self.updatedValues containsObject:@"dateTimeLastModified"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"dateTimeLastModified"];
            }
    }
	{id curVal = self.type;
    if([self.updatedValues containsObject:@"type"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"type"];
            }
    }
	{id curVal = self.webUrl;
    if([self.updatedValues containsObject:@"webUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"webUrl"];
            }
    }
    return dic;
}


/** Setter implementation for property contentUrl
 *
 */
- (void) setContentUrl: (NSString *) value {
    _contentUrl = value;
    [self valueChangedFor:@"contentUrl"];
}
       
/** Setter implementation for property image
 *
 */
- (void) setImage: (MSFilesImageFacet *) value {
    _image = value;
    [self valueChangedFor:@"image"];
}
       

@end
