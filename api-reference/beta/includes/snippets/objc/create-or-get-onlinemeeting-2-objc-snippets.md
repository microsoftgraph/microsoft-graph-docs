---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onlineMeetings/createOrGet"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

MSGraphChatInfo *chatInfo = [[MSGraphChatInfo alloc] init];
[chatInfo setThreadId:@"19:7ebda77322dd4505ac4dedb5b67df076@thread.tacv2"];
payloadDictionary[@"chatInfo"] = chatInfo;

NSString *startDateTimeDateTimeString = @"02/06/2020 01:49:21";
NSDate *startDateTime = [NSDate ms_dateFromString: startDateTimeDateTimeString];
payloadDictionary[@"startDateTime"] = startDateTime;

NSString *endDateTimeDateTimeString = @"02/06/2020 02:19:21";
NSDate *endDateTime = [NSDate ms_dateFromString: endDateTimeDateTimeString];
payloadDictionary[@"endDateTime"] = endDateTime;

NSString *externalId = @"7eb8263f-d0e0-4149-bb1c-1f0476083c56";
payloadDictionary[@"externalId"] = externalId;

MSGraphMeetingParticipants *participants = [[MSGraphMeetingParticipants alloc] init];
NSMutableArray *attendeesList = [[NSMutableArray alloc] init];
MSGraphMeetingParticipantInfo *attendees = [[MSGraphMeetingParticipantInfo alloc] init];
MSGraphIdentitySet *identity = [[MSGraphIdentitySet alloc] init];
MSGraphIdentity *user = [[MSGraphIdentity alloc] init];
[user setId:@"1f35f2e6-9cab-44ad-8d5a-b74c14720000"];
[identity setUser:user];
[attendees setIdentity:identity];
[attendees setUpn:@"test1@contoso.com"];
[attendeesList addObject: attendees];
[participants setAttendees:attendeesList];
payloadDictionary[@"participants"] = participants;

NSString *subject = @"Create a meeting with customId provided";
payloadDictionary[@"subject"] = subject;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```