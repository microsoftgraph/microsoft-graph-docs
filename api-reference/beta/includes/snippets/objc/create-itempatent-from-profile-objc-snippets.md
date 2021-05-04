---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/patents"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphItemPatent *itemPatent = [[MSGraphItemPatent alloc] init];
[itemPatent setDescription:@"Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel."];
[itemPatent setDisplayName:@"Inferring User Intent through browsing behaviors"];
[itemPatent setIsPending: true];
[itemPatent setNumber:@"USPTO-3954432633"];
[itemPatent setWebUrl:@"https://patents.gov/3954432633"];

NSError *error;
NSData *itemPatentData = [itemPatent getSerializedDataWithError:&error];
[urlRequest setHTTPBody:itemPatentData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```