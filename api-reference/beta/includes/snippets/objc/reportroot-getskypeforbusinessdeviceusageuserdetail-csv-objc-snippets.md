---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getSkypeForBusinessDeviceUsageUserDetail(period='D7')?$format=text/csv"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *skypeForBusinessDeviceUsageUserDetailList = [[NSMutableArray alloc] init];
		skypeForBusinessDeviceUsageUserDetailList = [jsonFinal valueForKey:@"value"];
		MSGraphSkypeForBusinessDeviceUsageUserDetail *skypeForBusinessDeviceUsageUserDetail = [[MSGraphSkypeForBusinessDeviceUsageUserDetail alloc] initWithDictionary:[skypeForBusinessDeviceUsageUserDetailList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```