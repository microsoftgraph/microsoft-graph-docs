---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/notes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonAnnotation *personAnnotation = [[MSGraphPersonAnnotation alloc] init];
MSGraphItemBody *detail = [[MSGraphItemBody alloc] init];
[detail setContentType: [MSGraphBodyType text]];
[detail setContent:@"I am originally from Australia, but grew up in Moscow, Russia."];
[personAnnotation setDetail:detail];
[personAnnotation setDisplayName:@"About Me"];

NSError *error;
NSData *personAnnotationData = [personAnnotation getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personAnnotationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```