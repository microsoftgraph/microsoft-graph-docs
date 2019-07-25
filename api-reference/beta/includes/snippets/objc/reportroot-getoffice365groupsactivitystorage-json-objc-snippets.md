---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getOffice365GroupsActivityStorage(period='D7')?$format=application/json"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *office365GroupsActivityStorageList = [[NSMutableArray alloc] init];
		office365GroupsActivityStorageList = [jsonFinal valueForKey:@"value"];
		MSGraphOffice365GroupsActivityStorage *office365GroupsActivityStorage = [[MSGraphOffice365GroupsActivityStorage alloc] initWithDictionary:[office365GroupsActivityStorageList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```