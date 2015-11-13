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



/** Implementation for MSGraphEvent
 *
 */
@implementation MSGraphEvent


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
    if(_$$$_$$$propertiesNamesMappings==nil){
    _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"ResponseStatus", @"responseStatus", @"iCalUId", @"iCalUId", @"HasAttachments", @"hasAttachments", @"Subject", @"subject", @"Body", @"body", @"BodyPreview", @"bodyPreview", @"Importance", @"importance", @"Sensitivity", @"sensitivity", @"Start", @"start", @"OriginalStart", @"originalStart", @"StartTimeZone", @"startTimeZone", @"End", @"end", @"EndTimeZone", @"endTimeZone", @"Location", @"location", @"IsAllDay", @"isAllDay", @"IsCancelled", @"isCancelled", @"IsOrganizer", @"isOrganizer", @"Recurrence", @"recurrence", @"ResponseRequested", @"responseRequested", @"SeriesMasterId", @"seriesMasterId", @"ShowAs", @"showAs", @"Type", @"type", @"Attendees", @"attendees", @"Organizer", @"organizer", @"WebLink", @"webLink", @"Calendar", @"calendar", @"Instances", @"instances", @"Extensions", @"extensions", @"Attachments", @"attachments", @"CreatedDateTime", @"createdDateTime", @"LastModifiedDateTime", @"lastModifiedDateTime", @"ChangeKey", @"changeKey", @"Categories", @"categories", @"Id", @"_id", nil];
    
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.Event";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
    
		_responseStatus = [dic objectForKey: @"ResponseStatus"] != nil ? [[MSGraphResponseStatus alloc] initWithDictionary: [dic objectForKey: @"ResponseStatus"]] : _responseStatus;
		_iCalUId = [dic objectForKey: @"iCalUId"] != nil ? [[dic objectForKey: @"iCalUId"] copy] : _iCalUId;
		_hasAttachments = [dic objectForKey: @"HasAttachments"] != nil ? [[dic objectForKey: @"HasAttachments"] boolValue] : _hasAttachments;
		_subject = [dic objectForKey: @"Subject"] != nil ? [[dic objectForKey: @"Subject"] copy] : _subject;
		_body = [dic objectForKey: @"Body"] != nil ? [[MSGraphItemBody alloc] initWithDictionary: [dic objectForKey: @"Body"]] : _body;
		_bodyPreview = [dic objectForKey: @"BodyPreview"] != nil ? [[dic objectForKey: @"BodyPreview"] copy] : _bodyPreview;
		_importance = [dic objectForKey: @"Importance"] != nil ? [MSGraphImportanceSerializer fromString:[dic objectForKey: @"Importance"]] : _importance;
		_sensitivity = [dic objectForKey: @"Sensitivity"] != nil ? [MSGraphSensitivitySerializer fromString:[dic objectForKey: @"Sensitivity"]] : _sensitivity;
		_start = [dic objectForKey: @"Start"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"Start"]] : _start;
		_originalStart = [dic objectForKey: @"OriginalStart"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"OriginalStart"]] : _originalStart;
		_startTimeZone = [dic objectForKey: @"StartTimeZone"] != nil ? [[dic objectForKey: @"StartTimeZone"] copy] : _startTimeZone;
		_end = [dic objectForKey: @"End"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"End"]] : _end;
		_endTimeZone = [dic objectForKey: @"EndTimeZone"] != nil ? [[dic objectForKey: @"EndTimeZone"] copy] : _endTimeZone;
		_location = [dic objectForKey: @"Location"] != nil ? [[MSGraphLocation alloc] initWithDictionary: [dic objectForKey: @"Location"]] : _location;
		_isAllDay = [dic objectForKey: @"IsAllDay"] != nil ? [[dic objectForKey: @"IsAllDay"] boolValue] : _isAllDay;
		_isCancelled = [dic objectForKey: @"IsCancelled"] != nil ? [[dic objectForKey: @"IsCancelled"] boolValue] : _isCancelled;
		_isOrganizer = [dic objectForKey: @"IsOrganizer"] != nil ? [[dic objectForKey: @"IsOrganizer"] boolValue] : _isOrganizer;
		_recurrence = [dic objectForKey: @"Recurrence"] != nil ? [[MSGraphPatternedRecurrence alloc] initWithDictionary: [dic objectForKey: @"Recurrence"]] : _recurrence;
		_responseRequested = [dic objectForKey: @"ResponseRequested"] != nil ? [[dic objectForKey: @"ResponseRequested"] boolValue] : _responseRequested;
		_seriesMasterId = [dic objectForKey: @"SeriesMasterId"] != nil ? [[dic objectForKey: @"SeriesMasterId"] copy] : _seriesMasterId;
		_showAs = [dic objectForKey: @"ShowAs"] != nil ? [MSGraphFreeBusyStatusSerializer fromString:[dic objectForKey: @"ShowAs"]] : _showAs;
		_type = [dic objectForKey: @"Type"] != nil ? [MSGraphEventTypeSerializer fromString:[dic objectForKey: @"Type"]] : _type;

        if([dic objectForKey: @"Attendees"] != [NSNull null]){
            _attendees = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Attendees"]) {
                [_attendees addObject:[[MSGraphAttendee alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_attendees resetChangedFlag];
        }
        
		_organizer = [dic objectForKey: @"Organizer"] != nil ? [[MSGraphRecipient alloc] initWithDictionary: [dic objectForKey: @"Organizer"]] : _organizer;
		_webLink = [dic objectForKey: @"WebLink"] != nil ? [[dic objectForKey: @"WebLink"] copy] : _webLink;
		_calendar = [dic objectForKey: @"Calendar"] != nil ? [[MSGraphCalendar alloc] initWithDictionary: [dic objectForKey: @"Calendar"]] : _calendar;

        if([dic objectForKey: @"Instances"] != [NSNull null]){
            _instances = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Instances"]) {
                [_instances addObject:[[MSGraphEvent alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_instances resetChangedFlag];
        }
        

        if([dic objectForKey: @"Extensions"] != [NSNull null]){
            _extensions = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Extensions"]) {
                [_extensions addObject:[[MSGraphExtension alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_extensions resetChangedFlag];
        }
        

        if([dic objectForKey: @"Attachments"] != [NSNull null]){
            _attachments = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Attachments"]) {
                [_attachments addObject:[[MSGraphAttachment alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_attachments resetChangedFlag];
        }
        
		self.createdDateTime = [dic objectForKey: @"CreatedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"CreatedDateTime"]] : self.createdDateTime;
		self.lastModifiedDateTime = [dic objectForKey: @"LastModifiedDateTime"] != nil ? [MSOrcObjectizer dateFromString:[dic objectForKey: @"LastModifiedDateTime"]] : self.lastModifiedDateTime;
		self.changeKey = [dic objectForKey: @"ChangeKey"] != nil ? [[dic objectForKey: @"ChangeKey"] copy] : self.changeKey;

        if([dic objectForKey: @"Categories"] != [NSNull null]){
            self.categories = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"Categories"]) {
                [self.categories addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)self.categories resetChangedFlag];
        }
        
		self._id = [dic objectForKey: @"Id"] != nil ? [[dic objectForKey: @"Id"] copy] : self._id;

    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.responseStatus toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"ResponseStatus"];}
	{id curVal = [self.iCalUId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"iCalUId"];}
	{[dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"HasAttachments"];}
	{id curVal = [self.subject copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Subject"];}
	{id curVal = [self.body toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Body"];}
	{id curVal = [self.bodyPreview copy];if (curVal!=nil) [dic setValue: curVal forKey: @"BodyPreview"];}
	{[dic setValue: [MSGraphImportanceSerializer toString:self.importance] forKey: @"Importance"];}
	{[dic setValue: [MSGraphSensitivitySerializer toString:self.sensitivity] forKey: @"Sensitivity"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.start];if (curVal!=nil) [dic setValue: curVal forKey: @"Start"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.originalStart];if (curVal!=nil) [dic setValue: curVal forKey: @"OriginalStart"];}
	{id curVal = [self.startTimeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"StartTimeZone"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.end];if (curVal!=nil) [dic setValue: curVal forKey: @"End"];}
	{id curVal = [self.endTimeZone copy];if (curVal!=nil) [dic setValue: curVal forKey: @"EndTimeZone"];}
	{id curVal = [self.location toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Location"];}
	{[dic setValue: (self.isAllDay?@"true":@"false") forKey: @"IsAllDay"];}
	{[dic setValue: (self.isCancelled?@"true":@"false") forKey: @"IsCancelled"];}
	{[dic setValue: (self.isOrganizer?@"true":@"false") forKey: @"IsOrganizer"];}
	{id curVal = [self.recurrence toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Recurrence"];}
	{[dic setValue: (self.responseRequested?@"true":@"false") forKey: @"ResponseRequested"];}
	{id curVal = [self.seriesMasterId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"SeriesMasterId"];}
	{[dic setValue: [MSGraphFreeBusyStatusSerializer toString:self.showAs] forKey: @"ShowAs"];}
	{[dic setValue: [MSGraphEventTypeSerializer toString:self.type] forKey: @"Type"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.attendees) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{id curVal = [self.organizer toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Organizer"];}
	{id curVal = [self.webLink copy];if (curVal!=nil) [dic setValue: curVal forKey: @"WebLink"];}
	{id curVal = [self.calendar toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"Calendar"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.instances) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.extensions) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"CreatedDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"LastModifiedDateTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ChangeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#microsoft.graph.Event" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.responseStatus;
    if([self.updatedValues containsObject:@"ResponseStatus"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"ResponseStatus"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"ResponseStatus"];
            }
        
            }}
	{id curVal = self.iCalUId;
    if([self.updatedValues containsObject:@"iCalUId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"iCalUId"];
            }
    }
	{id curVal = self.hasAttachments;
    if([self.updatedValues containsObject:@"HasAttachments"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"HasAttachments"];
            }
    }
	{id curVal = self.subject;
    if([self.updatedValues containsObject:@"Subject"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Subject"];
            }
    }
	{id curVal = self.body;
    if([self.updatedValues containsObject:@"Body"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Body"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Body"];
            }
        
            }}
	{id curVal = self.bodyPreview;
    if([self.updatedValues containsObject:@"BodyPreview"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"BodyPreview"];
            }
    }
	{id curVal = self.importance;
    if([self.updatedValues containsObject:@"Importance"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSGraphImportanceSerializer toString:curVal] forKey: @"Importance"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Importance"];
            }
        
            }}
	{id curVal = self.sensitivity;
    if([self.updatedValues containsObject:@"Sensitivity"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSGraphSensitivitySerializer toString:curVal] forKey: @"Sensitivity"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Sensitivity"];
            }
        
            }}
	{id curVal = self.start;
    if([self.updatedValues containsObject:@"Start"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"Start"];
            }
    }
	{id curVal = self.originalStart;
    if([self.updatedValues containsObject:@"OriginalStart"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"OriginalStart"];
            }
    }
	{id curVal = self.startTimeZone;
    if([self.updatedValues containsObject:@"StartTimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"StartTimeZone"];
            }
    }
	{id curVal = self.end;
    if([self.updatedValues containsObject:@"End"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"End"];
            }
    }
	{id curVal = self.endTimeZone;
    if([self.updatedValues containsObject:@"EndTimeZone"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"EndTimeZone"];
            }
    }
	{id curVal = self.location;
    if([self.updatedValues containsObject:@"Location"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Location"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Location"];
            }
        
            }}
	{id curVal = self.isAllDay;
    if([self.updatedValues containsObject:@"IsAllDay"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsAllDay"];
            }
    }
	{id curVal = self.isCancelled;
    if([self.updatedValues containsObject:@"IsCancelled"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsCancelled"];
            }
    }
	{id curVal = self.isOrganizer;
    if([self.updatedValues containsObject:@"IsOrganizer"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"IsOrganizer"];
            }
    }
	{id curVal = self.recurrence;
    if([self.updatedValues containsObject:@"Recurrence"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Recurrence"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Recurrence"];
            }
        
            }}
	{id curVal = self.responseRequested;
    if([self.updatedValues containsObject:@"ResponseRequested"])
    {
                [dic setValue: curVal==nil?[NSNull null]:(curVal?@"true":@"false") forKey: @"ResponseRequested"];
            }
    }
	{id curVal = self.seriesMasterId;
    if([self.updatedValues containsObject:@"SeriesMasterId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"SeriesMasterId"];
            }
    }
	{id curVal = self.showAs;
    if([self.updatedValues containsObject:@"ShowAs"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSGraphFreeBusyStatusSerializer toString:curVal] forKey: @"ShowAs"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"ShowAs"];
            }
        
            }}
	{id curVal = self.type;
    if([self.updatedValues containsObject:@"Type"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSGraphEventTypeSerializer toString:curVal] forKey: @"Type"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Type"];
            }
        
            }}
	{id curVal = self.attendees;
    if([self.updatedValues containsObject:@"Attendees"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Attendees"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.attendees) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Attendees"];
        }
        
            }}
	{id curVal = self.organizer;
    if([self.updatedValues containsObject:@"Organizer"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Organizer"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Organizer"];
            }
        
            }}
	{id curVal = self.webLink;
    if([self.updatedValues containsObject:@"WebLink"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"WebLink"];
            }
    }
	{id curVal = self.calendar;
    if([self.updatedValues containsObject:@"Calendar"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"Calendar"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"Calendar"];
            }
        
            }}
	{id curVal = self.instances;
    if([self.updatedValues containsObject:@"Instances"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Instances"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.instances) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Instances"];
        }
        
            }}
	{id curVal = self.extensions;
    if([self.updatedValues containsObject:@"Extensions"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Extensions"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.extensions) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Extensions"];
        }
        
            }}
	{id curVal = self.attachments;
    if([self.updatedValues containsObject:@"Attachments"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"Attachments"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"Attachments"];
        }
        
            }}
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"CreatedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"CreatedDateTime"];
            }
    }
	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"LastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"LastModifiedDateTime"];
            }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"ChangeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ChangeKey"];
            }
    }
	{id curVal = self.categories;
    if([self.updatedValues containsObject:@"Categories"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"Categories"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"Categories"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property responseStatus
 *
 */
- (void) setResponseStatus: (MSGraphResponseStatus *) value {
    _responseStatus = value;
    [self valueChangedFor:@"ResponseStatus"];
}
       
/** Setter implementation for property iCalUId
 *
 */
- (void) setICalUId: (NSString *) value {
    _iCalUId = value;
    [self valueChangedFor:@"iCalUId"];
}
       
/** Setter implementation for property hasAttachments
 *
 */
- (void) setHasAttachments: (bool) value {
    _hasAttachments = value;
    [self valueChangedFor:@"HasAttachments"];
}
       
/** Setter implementation for property subject
 *
 */
- (void) setSubject: (NSString *) value {
    _subject = value;
    [self valueChangedFor:@"Subject"];
}
       
/** Setter implementation for property body
 *
 */
- (void) setBody: (MSGraphItemBody *) value {
    _body = value;
    [self valueChangedFor:@"Body"];
}
       
/** Setter implementation for property bodyPreview
 *
 */
- (void) setBodyPreview: (NSString *) value {
    _bodyPreview = value;
    [self valueChangedFor:@"BodyPreview"];
}
       
/** Setter implementation for property importance
 *
 */
- (void) setImportance: (MSGraphImportance) value {
    _importance = value;
    [self valueChangedFor:@"Importance"];
}
       

- (void)setImportanceString:(NSString *)string {
        
    _importance = [MSGraphImportanceSerializer fromString:string];
    [self valueChangedFor:@"Importance"]; 
}

/** Setter implementation for property sensitivity
 *
 */
- (void) setSensitivity: (MSGraphSensitivity) value {
    _sensitivity = value;
    [self valueChangedFor:@"Sensitivity"];
}
       

- (void)setSensitivityString:(NSString *)string {
        
    _sensitivity = [MSGraphSensitivitySerializer fromString:string];
    [self valueChangedFor:@"Sensitivity"]; 
}

/** Setter implementation for property start
 *
 */
- (void) setStart: (NSDate *) value {
    _start = value;
    [self valueChangedFor:@"Start"];
}
       
/** Setter implementation for property originalStart
 *
 */
- (void) setOriginalStart: (NSDate *) value {
    _originalStart = value;
    [self valueChangedFor:@"OriginalStart"];
}
       
/** Setter implementation for property startTimeZone
 *
 */
- (void) setStartTimeZone: (NSString *) value {
    _startTimeZone = value;
    [self valueChangedFor:@"StartTimeZone"];
}
       
/** Setter implementation for property end
 *
 */
- (void) setEnd: (NSDate *) value {
    _end = value;
    [self valueChangedFor:@"End"];
}
       
/** Setter implementation for property endTimeZone
 *
 */
- (void) setEndTimeZone: (NSString *) value {
    _endTimeZone = value;
    [self valueChangedFor:@"EndTimeZone"];
}
       
/** Setter implementation for property location
 *
 */
- (void) setLocation: (MSGraphLocation *) value {
    _location = value;
    [self valueChangedFor:@"Location"];
}
       
/** Setter implementation for property isAllDay
 *
 */
- (void) setIsAllDay: (bool) value {
    _isAllDay = value;
    [self valueChangedFor:@"IsAllDay"];
}
       
/** Setter implementation for property isCancelled
 *
 */
- (void) setIsCancelled: (bool) value {
    _isCancelled = value;
    [self valueChangedFor:@"IsCancelled"];
}
       
/** Setter implementation for property isOrganizer
 *
 */
- (void) setIsOrganizer: (bool) value {
    _isOrganizer = value;
    [self valueChangedFor:@"IsOrganizer"];
}
       
/** Setter implementation for property recurrence
 *
 */
- (void) setRecurrence: (MSGraphPatternedRecurrence *) value {
    _recurrence = value;
    [self valueChangedFor:@"Recurrence"];
}
       
/** Setter implementation for property responseRequested
 *
 */
- (void) setResponseRequested: (bool) value {
    _responseRequested = value;
    [self valueChangedFor:@"ResponseRequested"];
}
       
/** Setter implementation for property seriesMasterId
 *
 */
- (void) setSeriesMasterId: (NSString *) value {
    _seriesMasterId = value;
    [self valueChangedFor:@"SeriesMasterId"];
}
       
/** Setter implementation for property showAs
 *
 */
- (void) setShowAs: (MSGraphFreeBusyStatus) value {
    _showAs = value;
    [self valueChangedFor:@"ShowAs"];
}
       

- (void)setShowAsString:(NSString *)string {
        
    _showAs = [MSGraphFreeBusyStatusSerializer fromString:string];
    [self valueChangedFor:@"ShowAs"]; 
}

/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphEventType) value {
    _type = value;
    [self valueChangedFor:@"Type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphEventTypeSerializer fromString:string];
    [self valueChangedFor:@"Type"]; 
}

/** Setter implementation for property attendees
 *
 */
- (void) setAttendees: (NSMutableArray *) value {
    _attendees = value;
    [self valueChangedFor:@"Attendees"];
}
       
/** Setter implementation for property organizer
 *
 */
- (void) setOrganizer: (MSGraphRecipient *) value {
    _organizer = value;
    [self valueChangedFor:@"Organizer"];
}
       
/** Setter implementation for property webLink
 *
 */
- (void) setWebLink: (NSString *) value {
    _webLink = value;
    [self valueChangedFor:@"WebLink"];
}
       
/** Setter implementation for property calendar
 *
 */
- (void) setCalendar: (MSGraphCalendar *) value {
    _calendar = value;
    [self valueChangedFor:@"Calendar"];
}
       
/** Setter implementation for property instances
 *
 */
- (void) setInstances: (NSMutableArray *) value {
    _instances = value;
    [self valueChangedFor:@"Instances"];
}
       
/** Setter implementation for property extensions
 *
 */
- (void) setExtensions: (NSMutableArray *) value {
    _extensions = value;
    [self valueChangedFor:@"Extensions"];
}
       
/** Setter implementation for property attachments
 *
 */
- (void) setAttachments: (NSMutableArray *) value {
    _attachments = value;
    [self valueChangedFor:@"Attachments"];
}
       

@end
