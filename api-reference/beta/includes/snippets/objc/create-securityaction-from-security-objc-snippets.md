---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/security/securityActions"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSecurityAction *securityAction = [[MSGraphSecurityAction alloc] init];
[securityAction setName:@"BlockIp"];
[securityAction setActionReason:@"Test"];
NSMutableArray *parametersList = [[NSMutableArray alloc] init];
MSGraphKeyValuePair *parameters = [[MSGraphKeyValuePair alloc] init];
[parameters setName:@"IP"];
[parameters setValue:@"1.2.3.4"];
[parametersList addObject: parameters];
[securityAction setParameters:parametersList];
MSGraphSecurityVendorInformation *vendorInformation = [[MSGraphSecurityVendorInformation alloc] init];
[vendorInformation setProvider:@"Windows Defender ATP"];
[vendorInformation setVendor:@"Microsoft"];
[securityAction setVendorInformation:vendorInformation];

NSError *error;
NSData *securityActionData = [securityAction getSerializedDataWithError:&error];
[urlRequest setHTTPBody:securityActionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```