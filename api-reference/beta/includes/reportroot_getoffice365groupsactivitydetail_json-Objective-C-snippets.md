---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getOffice365GroupsActivityDetail(period='D7')?$format=application/json"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *office365GroupsActivityDetailList = [[NSMutableArray alloc] init];
		office365GroupsActivityDetailList = [jsonFinal valueForKey:@"value"];
		MSGraphOffice365GroupsActivityDetail *office365GroupsActivityDetail = [[MSGraphOffice365GroupsActivityDetail alloc] initWithDictionary:[office365GroupsActivityDetailList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```