---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/informationprotection/policy/labels"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *informationProtectionLabelList = [[NSMutableArray alloc] init];
		informationProtectionLabelList = [jsonFinal valueForKey:@"value"];
		MSGraphInformationProtectionLabel *informationProtectionLabel = [[MSGraphInformationProtectionLabel alloc] initWithDictionary:[informationProtectionLabelList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```