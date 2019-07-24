---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/riskDetections?$filter=riskType%20eq%20'unfamiliarFeatures'%20or%20riskLevel%20eq%20'medium'"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *riskDetectionList = [[NSMutableArray alloc] init];
		riskDetectionList = [jsonFinal valueForKey:@"value"];
		MSGraphRiskDetection *riskDetection = [[MSGraphRiskDetection alloc] initWithDictionary:[riskDetectionList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```