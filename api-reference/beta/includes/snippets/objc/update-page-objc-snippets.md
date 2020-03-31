---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/onenote/pages/{id}/content"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableArray *streamList = [[NSMutableArray alloc] init];
MSGraphStream *stream = [[MSGraphStream alloc] init];
[stream setTarget:@"#para-id"];
[stream setAction:@"insert"];
[stream setPosition:@"before"];
[stream setContent:@"<img src=\"image-url-or-part-name\" alt=\"image-alt-text\" />"];
[streamList addObject: stream];
MSGraphStream *stream = [[MSGraphStream alloc] init];
[stream setTarget:@"#list-id"];
[stream setAction:@"append"];
[stream setContent:@"<li>new-page-content</li>"];
[streamList addObject: stream];

NSError *error;
NSData *streamData = [stream getSerializedDataWithError:&error];
[urlRequest setHTTPBody:streamData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```