---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/synchronizationProfiles/{id}/errors"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *educationSynchronizationErrorList = [[NSMutableArray alloc] init];
		educationSynchronizationErrorList = [jsonFinal valueForKey:@"value"];
		MSGraphEducationSynchronizationError *educationSynchronizationError = [[MSGraphEducationSynchronizationError alloc] initWithDictionary:[educationSynchronizationErrorList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```