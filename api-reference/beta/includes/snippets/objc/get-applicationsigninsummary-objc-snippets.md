---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getAzureADApplicationSignInSummary(period='D7')"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *applicationSignInSummaryList = [[NSMutableArray alloc] init];
		applicationSignInSummaryList = [jsonFinal valueForKey:@"value"];
		MSGraphApplicationSignInSummary *applicationSignInSummary = [[MSGraphApplicationSignInSummary alloc] initWithDictionary:[applicationSignInSummaryList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```