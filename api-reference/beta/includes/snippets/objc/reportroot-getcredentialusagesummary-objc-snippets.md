---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getCredentialUsageSummary(period='D30')?$filter=feature%20eq%20'registration'"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *credentialUsageSummaryList = [[NSMutableArray alloc] init];
		credentialUsageSummaryList = [jsonFinal valueForKey:@"value"];
		MSGraphCredentialUsageSummary *credentialUsageSummary = [[MSGraphCredentialUsageSummary alloc] initWithDictionary:[credentialUsageSummaryList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```