---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teamwork/workforceIntegrations"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWorkforceIntegration *workforceIntegrations = [[MSGraphWorkforceIntegration alloc] init];
[workforceIntegrations setDisplayName:@"displayName-value"];
[workforceIntegrations setApiVersion: 99];
MSGraphWorkforceIntegrationEncryption *encryption = [[MSGraphWorkforceIntegrationEncryption alloc] init];
[encryption setProtocol: [MSGraphWorkforceIntegrationEncryptionProtocol sharedSecret]];
[encryption setSecret:@"secret-value"];
[workforceIntegrations setEncryption:encryption];
[workforceIntegrations setIsActive: true];
[workforceIntegrations setUrl:@"url-value"];
[workforceIntegrations setSupports: [MSGraphWorkforceIntegrationSupportedEntities none]];

NSError *error;
NSData *workforceIntegrationsData = [workforceIntegrations getSerializedDataWithError:&error];
[urlRequest setHTTPBody:workforceIntegrationsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```