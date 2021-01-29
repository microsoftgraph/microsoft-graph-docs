---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/findMeetingTimes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"outlook.timezone=\"Pacific Standard Time\"" forHTTPHeaderField:@"Prefer"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *attendeesList = [[NSMutableArray alloc] init];
MSGraphAttendeeBase *attendees = [[MSGraphAttendeeBase alloc] init];
[attendees setType: [MSGraphAttendeeType required]];
MSGraphEmailAddress *emailAddress = [[MSGraphEmailAddress alloc] init];
[emailAddress setName:@"Alex Wilbur"];
[emailAddress setAddress:@"alexw@contoso.onmicrosoft.com"];
[attendees setEmailAddress:emailAddress];
[attendeesList addObject: attendees];
payloadDictionary[@"attendees"] = attendeesList;

MSGraphLocationConstraint *locationConstraint = [[MSGraphLocationConstraint alloc] init];
[locationConstraint setIsRequired: false];
[locationConstraint setSuggestLocation: false];
NSMutableArray *locationsList = [[NSMutableArray alloc] init];
MSGraphLocationConstraintItem *locations = [[MSGraphLocationConstraintItem alloc] init];
[locations setResolveAvailability: false];
[locations setDisplayName:@"Conf room Hood"];
[locationsList addObject: locations];
[locationConstraint setLocations:locationsList];
payloadDictionary[@"locationConstraint"] = locationConstraint;

MSGraphTimeConstraint *timeConstraint = [[MSGraphTimeConstraint alloc] init];
[timeConstraint setActivityDomain: [MSGraphActivityDomain work]];
NSMutableArray *timeSlotsList = [[NSMutableArray alloc] init];
MSGraphTimeSlot *timeSlots = [[MSGraphTimeSlot alloc] init];
MSGraphDateTimeTimeZone *start = [[MSGraphDateTimeTimeZone alloc] init];
[start setDateTime: "2019-04-16T09:00:00"];
[start setTimeZone:@"Pacific Standard Time"];
[timeSlots setStart:start];
MSGraphDateTimeTimeZone *end = [[MSGraphDateTimeTimeZone alloc] init];
[end setDateTime: "2019-04-18T17:00:00"];
[end setTimeZone:@"Pacific Standard Time"];
[timeSlots setEnd:end];
[timeSlotsList addObject: timeSlots];
[timeConstraint setTimeSlots:timeSlotsList];
payloadDictionary[@"timeConstraint"] = timeConstraint;

BOOL isOrganizerOptional = NO;
payloadDictionary[@"isOrganizerOptional"] = isOrganizerOptional;

NSString *meetingDuration = @"PT1H";
payloadDictionary[@"meetingDuration"] = meetingDuration;

BOOL returnSuggestionReasons = YES;
payloadDictionary[@"returnSuggestionReasons"] = returnSuggestionReasons;

NSString *minimumAttendeePercentage = @"100";
payloadDictionary[@"minimumAttendeePercentage"] = minimumAttendeePercentage;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```