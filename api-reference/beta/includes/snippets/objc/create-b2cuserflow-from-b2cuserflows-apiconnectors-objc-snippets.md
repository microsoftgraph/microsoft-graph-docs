---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/b2cUserFlows"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphB2cIdentityUserFlow *b2cIdentityUserFlow = [[MSGraphB2cIdentityUserFlow alloc] init];
[b2cIdentityUserFlow setId:@"UserFlowWithAPIConnector"];
[b2cIdentityUserFlow setUserFlowType: [MSGraphUserFlowType signUpOrSignIn]];
[b2cIdentityUserFlow setUserFlowTypeVersion: 1];
MSGraphUserFlowApiConnectorConfiguration *apiConnectorConfiguration = [[MSGraphUserFlowApiConnectorConfiguration alloc] init];
MSGraphIdentityApiConnector *postFederationSignup = [[MSGraphIdentityApiConnector alloc] init];
[apiConnectorConfiguration setPostFederationSignup:postFederationSignup];
MSGraphIdentityApiConnector *postAttributeCollection = [[MSGraphIdentityApiConnector alloc] init];
[apiConnectorConfiguration setPostAttributeCollection:postAttributeCollection];
[b2cIdentityUserFlow setApiConnectorConfiguration:apiConnectorConfiguration];

NSError *error;
NSData *b2cIdentityUserFlowData = [b2cIdentityUserFlow getSerializedDataWithError:&error];
[urlRequest setHTTPBody:b2cIdentityUserFlowData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```