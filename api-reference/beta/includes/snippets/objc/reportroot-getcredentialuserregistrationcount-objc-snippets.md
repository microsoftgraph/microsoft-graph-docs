---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getCredentialUserRegistrationCount"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *credentialUserRegistrationCountList = [[NSMutableArray alloc] init];
		credentialUserRegistrationCountList = [jsonFinal valueForKey:@"value"];
		MSGraphCredentialUserRegistrationCount *credentialUserRegistrationCount = [[MSGraphCredentialUserRegistrationCount alloc] initWithDictionary:[credentialUserRegistrationCountList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```