---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/app/calls/57DAB8B1894C409AB240BD8BEAE78896/participants"]]];
[urlRequest setHTTPMethod:@"GET"];
[urlRequest setValue:@"Bearer <TOKEN>" forHTTPHeaderField:@"Authorization"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *participantList = [[NSMutableArray alloc] init];
		participantList = [jsonFinal valueForKey:@"value"];
		MSGraphParticipant *participant = [[MSGraphParticipant alloc] initWithDictionary:[participantList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```