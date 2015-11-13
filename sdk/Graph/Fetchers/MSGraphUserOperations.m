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



#import "MSGraphFetchers.h"


/** Implementation for MSGraphUserOperations
 *
 */
@implementation MSGraphUserOperations


- (instancetype)initOperationWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {
 
    return [super initOperationWithUrl:urlComponent parent:parent];
}

- (void)assignLicenseWithAddLicenses:(MSGraphAssignedLicense *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(MSGraphUser *, MSOrcError*))callback {


      NSString *addLicensesString = [MSOrcObjectizer deobjectizeToString:addLicenses];

  NSString *removeLicensesString = [removeLicenses copy];

    return [self assignLicenseRawWithAddLicenses:addLicensesString removeLicenses:removeLicensesString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphUser * result = (MSGraphUser *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphUser  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)assignLicenseRawWithAddLicenses:(NSString *)addLicenses removeLicenses:(NSString *)removeLicenses callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  addLicenses, @"addLicenses", removeLicenses, @"removeLicenses", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"assignLicense"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)sendMailWithMessage:(MSGraphMessage *)message saveToSentItems:(bool)saveToSentItems callback:(void (^)(int, MSOrcError*))callback {


      NSString *messageString = [MSOrcObjectizer deobjectizeToString:message];

  NSString *saveToSentItemsString = [MSOrcObjectizer stringFromBool:saveToSentItems];

    return [self sendMailRawWithMessage:messageString saveToSentItems:saveToSentItemsString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            int result = (int)[MSOrcObjectizer intFromString:returnValue];
            callback(result, e);
        } 
        else {

            callback((int)[returnValue integerValue], e);
        }
    }];    
    
        
}

- (void)sendMailRawWithMessage:(NSString *)message saveToSentItems:(NSString *)saveToSentItems callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  message, @"Message", saveToSentItems, @"SaveToSentItems", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"SendMail"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }
- (void)findMeetingTimesWithAttendees:(MSGraphAttendeeBase *)attendees locationConstraint:(MSGraphLocationConstraint *)locationConstraint timeConstraint:(MSGraphTimeConstraint *)timeConstraint meetingDuration:(NSTimeInterval)meetingDuration maxCandidates:(int)maxCandidates isOrganizerOptional:(bool)isOrganizerOptional callback:(void (^)(MSGraphMeetingTimeCandidate *, MSOrcError*))callback {


      NSString *attendeesString = [MSOrcObjectizer deobjectizeToString:attendees];

  NSString *locationConstraintString = [MSOrcObjectizer deobjectizeToString:locationConstraint];

  NSString *timeConstraintString = [MSOrcObjectizer deobjectizeToString:timeConstraint];

  NSString *meetingDurationString = [MSOrcObjectizer stringFromInt:meetingDuration];

  NSString *maxCandidatesString = [MSOrcObjectizer stringFromInt:maxCandidates];

  NSString *isOrganizerOptionalString = [MSOrcObjectizer stringFromBool:isOrganizerOptional];

    return [self findMeetingTimesRawWithAttendees:attendeesString locationConstraint:locationConstraintString timeConstraint:timeConstraintString meetingDuration:meetingDurationString maxCandidates:maxCandidatesString isOrganizerOptional:isOrganizerOptionalString callback:^(NSString *returnValue, MSOrcError *e) {
       
       if (e == nil) {
            MSGraphMeetingTimeCandidate * result = (MSGraphMeetingTimeCandidate *)[MSOrcObjectizer objectizeFromString:returnValue toType: [MSGraphMeetingTimeCandidate  class]];
            callback(result, e);
        } 
        else {

            callback(nil, e);
        }
    }];    
    
        
}

- (void)findMeetingTimesRawWithAttendees:(NSString *)attendees locationConstraint:(NSString *)locationConstraint timeConstraint:(NSString *)timeConstraint meetingDuration:(NSString *)meetingDuration maxCandidates:(NSString *)maxCandidates isOrganizerOptional:(NSString *)isOrganizerOptional callback:(void (^)(NSString *, MSOrcError*))callback {
        
    id<MSOrcRequest> request = [super.resolver createOrcRequest];
    
    NSArray *parameters = [[NSArray alloc] initWithObjects: [[NSDictionary alloc] initWithObjectsAndKeys:  attendees, @"Attendees", locationConstraint, @"LocationConstraint", timeConstraint, @"TimeConstraint", meetingDuration, @"MeetingDuration", maxCandidates, @"MaxCandidates", isOrganizerOptional, @"IsOrganizerOptional", nil ] , nil];
    NSData* payload = [[MSOrcBaseContainer generatePayloadWithParameters:parameters dependencyResolver:self.resolver] dataUsingEncoding:NSUTF8StringEncoding];
    [request setContent:payload];
    
    [request setVerb:HTTP_VERB_POST];
	     
	[request.url appendPathComponent:@"FindMeetingTimes"];
        	
    return [super orcExecuteRequest:request callback:^(id<MSOrcResponse> response, MSOrcError *e) {
        
		if (e == nil) {
            
			callback([[NSString alloc] initWithData:response.data encoding:NSUTF8StringEncoding], e);
        }
        else {

            callback([[NSString alloc] initWithFormat:@"%d", response.status], e);
        }
    }];
    
    }

@end


