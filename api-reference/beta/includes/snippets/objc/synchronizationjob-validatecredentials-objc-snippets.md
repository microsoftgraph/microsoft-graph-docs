---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}/synchronization/jobs/{id}/validateCredentials"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *credentialsList = [[NSMutableArray alloc] init];
MSGraphSynchronizationSecretKeyStringValuePair *credentials = [[MSGraphSynchronizationSecretKeyStringValuePair alloc] init];
[credentials setKey: [MSGraphSynchronizationSecret UserName]];
[credentials setValue:@"user@domain.com"];
[credentialsList addObject: credentials];
MSGraphSynchronizationSecretKeyStringValuePair *credentials = [[MSGraphSynchronizationSecretKeyStringValuePair alloc] init];
[credentials setKey: [MSGraphSynchronizationSecret Password]];
[credentials setValue:@"password-value"];
[credentialsList addObject: credentials];
payloadDictionary[@"credentials"] = credentialsList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```