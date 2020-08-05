---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/taskDefinitions/fab143fd-ee61-4358-8558-2c7dee953982"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPrintTaskDefinition *printTaskDefinition = [[MSGraphPrintTaskDefinition alloc] init];
[printTaskDefinition setDisplayName:@"Test TaskDefinitionName"];
MSGraphAppIdentity *createdBy = [[MSGraphAppIdentity alloc] init];
[createdBy setDisplayName:@"Requesting App Display Name"];
[printTaskDefinition setCreatedBy:createdBy];

NSError *error;
NSData *printTaskDefinitionData = [printTaskDefinition getSerializedDataWithError:&error];
[urlRequest setHTTPBody:printTaskDefinitionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```