---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/apiConnectors/be1f769b-9b13-437e-b540-79a905c4932c"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityApiConnector *identityApiConnector = [[MSGraphIdentityApiConnector alloc] init];
MSGraphApiAuthenticationConfigurationBase *authenticationConfiguration = [[MSGraphApiAuthenticationConfigurationBase alloc] init];
[authenticationConfiguration setPkcs12Value:@"eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"];
[authenticationConfiguration setPassword:@"secret"];
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