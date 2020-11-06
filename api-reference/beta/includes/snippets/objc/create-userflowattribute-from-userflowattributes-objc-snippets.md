---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/userFlowAttributes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityUserFlowAttribute *identityUserFlowAttribute = [[MSGraphIdentityUserFlowAttribute alloc] init];
[identityUserFlowAttribute setDisplayName:@"Hobby"];
[identityUserFlowAttribute setDescription:@"Your hobby"];
[identityUserFlowAttribute setDataType: [MSGraphIdentityUserFlowAttributeDataType string]];

NSError *error;
NSData *identityUserFlowAttributeData = [identityUserFlowAttribute getSerializedDataWithError:&error];
[urlRequest setHTTPBody:identityUserFlowAttributeData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```