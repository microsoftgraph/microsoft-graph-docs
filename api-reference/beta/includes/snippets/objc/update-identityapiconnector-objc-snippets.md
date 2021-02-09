---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/apiConnectors/{identityApiConnectorId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityApiConnector *identityApiConnector = [[MSGraphIdentityApiConnector alloc] init];
[identityApiConnector setDisplayName:@"New Test API"];
[identityApiConnector setTargetUrl:@"https://otherapi.com/api/endpoint"];
MSGraphApiAuthenticationConfigurationBase *authenticationConfiguration = [[MSGraphApiAuthenticationConfigurationBase alloc] init];
[authenticationConfiguration setUsername:@"<NEW_USERNAME>"];
[authenticationConfiguration setPassword:@"<NEW_PASSWORD>"];
[identityApiConnector setAuthenticationConfiguration:authenticationConfiguration];

NSError *error;
NSData *identityApiConnectorData = [identityApiConnector getSerializedDataWithError:&error];
[urlRequest setHTTPBody:identityApiConnectorData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```