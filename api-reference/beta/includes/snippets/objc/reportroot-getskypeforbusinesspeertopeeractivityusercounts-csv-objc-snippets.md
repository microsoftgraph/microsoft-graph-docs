---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/reports/getSkypeForBusinessPeerToPeerActivityUserCounts(period='D7')?$format=text/csv"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *skypeForBusinessPeerToPeerActivityUserCountsList = [[NSMutableArray alloc] init];
		skypeForBusinessPeerToPeerActivityUserCountsList = [jsonFinal valueForKey:@"value"];
		MSGraphSkypeForBusinessPeerToPeerActivityUserCounts *skypeForBusinessPeerToPeerActivityUserCounts = [[MSGraphSkypeForBusinessPeerToPeerActivityUserCounts alloc] initWithDictionary:[skypeForBusinessPeerToPeerActivityUserCountsList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```