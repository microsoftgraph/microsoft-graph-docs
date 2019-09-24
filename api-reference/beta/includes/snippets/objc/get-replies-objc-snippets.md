---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/drive/root/workbook/comments/{id}/replies"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *workbookCommentReplyList = [[NSMutableArray alloc] init];
		workbookCommentReplyList = [jsonFinal valueForKey:@"value"];
		MSGraphWorkbookCommentReply *workbookCommentReply = [[MSGraphWorkbookCommentReply alloc] initWithDictionary:[workbookCommentReplyList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```