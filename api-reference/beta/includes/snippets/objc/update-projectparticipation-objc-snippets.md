---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/projects/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphProjectParticipation *projectParticipation = [[MSGraphProjectParticipation alloc] init];
[projectParticipation setAllowedAudiences: [MSGraphAllowedAudiences organization]];
MSGraphCompanyDetail *client = [[MSGraphCompanyDetail alloc] init];
[client setDepartment:@"Corporate Marketing"];
[client setWebUrl:@"https://www.contoso.com"];
[projectParticipation setClient:client];

NSError *error;
NSData *projectParticipationData = [projectParticipation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:projectParticipationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```