---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/responsibilities"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphString *string = [[MSGraphString alloc] init];
[string setDescription:@"Member of the Microsoft API Council"];
[string setDisplayName:@"API Council"];
NSMutableArray *collaborationTagsList = [[NSMutableArray alloc] init];
[collaborationTagsList addObject: @"askMeAbout"];
[string setCollaborationTags:collaborationTagsList];

NSError *error;
NSData *stringData = [string getSerializedDataWithError:&error];
[urlRequest setHTTPBody:stringData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```