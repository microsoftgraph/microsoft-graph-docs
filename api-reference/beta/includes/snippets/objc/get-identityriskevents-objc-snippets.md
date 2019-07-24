---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityRiskEvents"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *identityRiskEventList = [[NSMutableArray alloc] init];
		identityRiskEventList = [jsonFinal valueForKey:@"value"];
		MSGraphIdentityRiskEvent *identityRiskEvent = [[MSGraphIdentityRiskEvent alloc] initWithDictionary:[identityRiskEventList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```