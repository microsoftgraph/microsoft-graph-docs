---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/directory/administrativeUnits"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAdministrativeUnit *administrativeUnit = [[MSGraphAdministrativeUnit alloc] init];
[administrativeUnit setDisplayName:@"Seattle District Technical Schools"];
[administrativeUnit setDescription:@"Seattle district technical schools administration"];
[administrativeUnit setVisibility:@"HiddenMembership"];

NSError *error;
NSData *administrativeUnitData = [administrativeUnit getSerializedDataWithError:&error];
[urlRequest setHTTPBody:administrativeUnitData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```