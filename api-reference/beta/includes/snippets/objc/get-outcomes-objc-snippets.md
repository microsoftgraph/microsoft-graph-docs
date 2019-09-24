---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/me/assignments/{id}/submissions/{id}/outcomes"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *educationOutcomeList = [[NSMutableArray alloc] init];
		educationOutcomeList = [jsonFinal valueForKey:@"value"];
		MSGraphEducationOutcome *educationOutcome = [[MSGraphEducationOutcome alloc] initWithDictionary:[educationOutcomeList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```