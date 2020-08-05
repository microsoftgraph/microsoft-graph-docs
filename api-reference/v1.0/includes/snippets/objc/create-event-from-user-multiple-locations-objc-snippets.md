---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/events"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"outlook.timezone=\"Pacific Standard Time\"" forHTTPHeaderField:@"Prefer"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEvent *event = [[MSGraphEvent alloc] init];
[event setSubject:@"Plan summer company picnic"];
MSGraphItemBody *body = [[MSGraphItemBody alloc] init];
[body setContentType: [MSGraphBodyType html]];
[body setContent:@"Let's kick-start this event planning!"];
[event setBody:body];
MSGraphDateTimeTimeZone *start = [[MSGraphDateTimeTimeZone alloc] init];
[start setDateTime: "2017-08-30T11:00:00"];
[start setTimeZone:@"Pacific Standard Time"];
[event setStart:start];
MSGraphDateTimeTimeZone *end = [[MSGraphDateTimeTimeZone alloc] init];
[end setDateTime: "2017-08-30T12:00:00"];
[end setTimeZone:@"Pacific Standard Time"];
[event setEnd:end];
NSMutableArray *attendeesList = [[NSMutableArray alloc] init];
MSGraphAttendee *attendees = [[MSGraphAttendee alloc] init];
MSGraphEmailAddress *emailAddress = [[MSGraphEmailAddress alloc] init];
[emailAddress setAddress:@"DanaS@contoso.onmicrosoft.com"];
[emailAddress setName:@"Dana Swope"];
[attendees setEmailAddress:emailAddress];
[attendees setType: [MSGraphAttendeeType required]];
[attendeesList addObject: attendees];
MSGraphAttendee *attendees = [[MSGraphAttendee alloc] init];
MSGraphEmailAddress *emailAddress = [[MSGraphEmailAddress alloc] init];
[emailAddress setAddress:@"AlexW@contoso.onmicrosoft.com"];
[emailAddress setName:@"Alex Wilber"];
[attendees setEmailAddress:emailAddress];
[attendees setType: [MSGraphAttendeeType required]];
[attendeesList addObject: attendees];
[event setAttendees:attendeesList];
MSGraphLocation *location = [[MSGraphLocation alloc] init];
[location setDisplayName:@"Conf Room 3; Fourth Coffee; Home Office"];
[location setLocationType: [MSGraphLocationType default]];
[event setLocation:location];
NSMutableArray *locationsList = [[NSMutableArray alloc] init];
MSGraphLocation *locations = [[MSGraphLocation alloc] init];
[locations setDisplayName:@"Conf Room 3"];
[locationsList addObject: locations];
MSGraphLocation *locations = [[MSGraphLocation alloc] init];
[locations setDisplayName:@"Fourth Coffee"];
MSGraphPhysicalAddress *address = [[MSGraphPhysicalAddress alloc] init];
[address setStreet:@"4567 Main St"];
[address setCity:@"Redmond"];
[address setState:@"WA"];
[address setCountryOrRegion:@"US"];
[address setPostalCode:@"32008"];
[locations setAddress:address];
MSGraphOutlookGeoCoordinates *coordinates = [[MSGraphOutlookGeoCoordinates alloc] init];
[coordinates setLatitude: 47.672];
[coordinates setLongitude: -102.103];
[locations setCoordinates:coordinates];
[locationsList addObject: locations];
MSGraphLocation *locations = [[MSGraphLocation alloc] init];
[locations setDisplayName:@"Home Office"];
[locationsList addObject: locations];
[event setLocations:locationsList];
[event setAllowNewTimeProposals: true];

NSError *error;
NSData *eventData = [event getSerializedDataWithError:&error];
[urlRequest setHTTPBody:eventData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```