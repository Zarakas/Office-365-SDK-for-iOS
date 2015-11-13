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



#import "MSOneNoteModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOneNoteNotes
 *
 */
@implementation MSOneNoteNotes


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"id", @"_id", @"notebooks", @"notebooks", @"sections", @"sections", @"sectionGroups", @"sectionGroups", @"pages", @"pages", @"resources", @"resources", @"operations", @"_operations", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Notes";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		__id = [dic objectForKey: @"id"] != nil ? [[dic objectForKey: @"id"] copy] : __id;

        if([dic objectForKey: @"notebooks"] != [NSNull null]){
            _notebooks = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"notebooks"]) {
                [_notebooks addObject:[[MSOneNoteNotebook alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_notebooks resetChangedFlag];
        }
        

        if([dic objectForKey: @"sections"] != [NSNull null]){
            _sections = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"sections"]) {
                [_sections addObject:[[MSOneNoteSection alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_sections resetChangedFlag];
        }
        

        if([dic objectForKey: @"sectionGroups"] != [NSNull null]){
            _sectionGroups = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"sectionGroups"]) {
                [_sectionGroups addObject:[[MSOneNoteSectionGroup alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_sectionGroups resetChangedFlag];
        }
        

        if([dic objectForKey: @"pages"] != [NSNull null]){
            _pages = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"pages"]) {
                [_pages addObject:[[MSOneNotePage alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_pages resetChangedFlag];
        }
        

        if([dic objectForKey: @"resources"] != [NSNull null]){
            _resources = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"resources"]) {
                [_resources addObject:[[MSOneNoteResource alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_resources resetChangedFlag];
        }
        

        if([dic objectForKey: @"operations"] != [NSNull null]){
            __operations = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"operations"]) {
                [__operations addObject:[[MSOneNoteOperation alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)__operations resetChangedFlag];
        }
        

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.notebooks) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"notebooks"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.sections) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"sections"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.sectionGroups) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"sectionGroups"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.pages) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"pages"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.resources) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"resources"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self._operations) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"operations"];}
    [dic setValue: @"#Microsoft.OneNote.Api.Notes" forKey: @"@odata.type"];

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
	{id curVal = self.notebooks;
    if([self.updatedValues containsObject:@"notebooks"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"notebooks"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.notebooks) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"notebooks"];
        }
        
            }}
	{id curVal = self.sections;
    if([self.updatedValues containsObject:@"sections"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"sections"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.sections) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"sections"];
        }
        
            }}
	{id curVal = self.sectionGroups;
    if([self.updatedValues containsObject:@"sectionGroups"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"sectionGroups"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.sectionGroups) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"sectionGroups"];
        }
        
            }}
	{id curVal = self.pages;
    if([self.updatedValues containsObject:@"pages"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"pages"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.pages) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"pages"];
        }
        
            }}
	{id curVal = self.resources;
    if([self.updatedValues containsObject:@"resources"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"resources"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.resources) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"resources"];
        }
        
            }}
	{id curVal = self._operations;
    if([self.updatedValues containsObject:@"operations"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"operations"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self._operations) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"operations"];
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
       
/** Setter implementation for property notebooks
 *
 */
- (void) setNotebooks: (NSMutableArray *) value {
    _notebooks = value;
    [self valueChangedFor:@"notebooks"];
}
       
/** Setter implementation for property sections
 *
 */
- (void) setSections: (NSMutableArray *) value {
    _sections = value;
    [self valueChangedFor:@"sections"];
}
       
/** Setter implementation for property sectionGroups
 *
 */
- (void) setSectionGroups: (NSMutableArray *) value {
    _sectionGroups = value;
    [self valueChangedFor:@"sectionGroups"];
}
       
/** Setter implementation for property pages
 *
 */
- (void) setPages: (NSMutableArray *) value {
    _pages = value;
    [self valueChangedFor:@"pages"];
}
       
/** Setter implementation for property resources
 *
 */
- (void) setResources: (NSMutableArray *) value {
    _resources = value;
    [self valueChangedFor:@"resources"];
}
       
/** Setter implementation for property _operations
 *
 */
- (void) setOperations: (NSMutableArray *) value {
    __operations = value;
    [self valueChangedFor:@"operations"];
}
       

@end
