---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getOffice365GroupsActivityFileCounts(period='D7')?$format=application/json"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *office365GroupsActivityFileCountsList = [[NSMutableArray alloc] init];
		office365GroupsActivityFileCountsList = [jsonFinal valueForKey:@"value"];
		MSGraphOffice365GroupsActivityFileCounts *office365GroupsActivityFileCounts = [[MSGraphOffice365GroupsActivityFileCounts alloc] initWithDictionary:[office365GroupsActivityFileCountsList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```