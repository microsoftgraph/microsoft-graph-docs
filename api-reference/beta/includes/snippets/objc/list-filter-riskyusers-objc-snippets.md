---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/riskyUsers?$filter=riskLevel%20eq%20microsoft.graph.riskLevel'medium'"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *riskyUserList = [[NSMutableArray alloc] init];
		riskyUserList = [jsonFinal valueForKey:@"value"];
		MSGraphRiskyUser *riskyUser = [[MSGraphRiskyUser alloc] initWithDictionary:[riskyUserList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```