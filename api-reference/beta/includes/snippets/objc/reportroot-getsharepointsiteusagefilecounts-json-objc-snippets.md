---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getSharePointSiteUsageFileCounts(period='D7')?$format=application/json"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *sharePointSiteUsageFileCountsList = [[NSMutableArray alloc] init];
		sharePointSiteUsageFileCountsList = [jsonFinal valueForKey:@"value"];
		MSGraphSharePointSiteUsageFileCounts *sharePointSiteUsageFileCounts = [[MSGraphSharePointSiteUsageFileCounts alloc] initWithDictionary:[sharePointSiteUsageFileCountsList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```