---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getOffice365ActivationsUserCounts?$format=text/csv"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *office365ActivationsUserCountsList = [[NSMutableArray alloc] init];
		office365ActivationsUserCountsList = [jsonFinal valueForKey:@"value"];
		MSGraphOffice365ActivationsUserCounts *office365ActivationsUserCounts = [[MSGraphOffice365ActivationsUserCounts alloc] initWithDictionary:[office365ActivationsUserCountsList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```