---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphChatMessage *chatMessage = [[MSGraphChatMessage alloc] init];
MSGraphItemBody *body = [[MSGraphItemBody alloc] init];
[body setContentType: [MSGraphBodyType html]];
[body setContent:@"Here's the latest budget. <attachment id=\"153fa47d-18c9-4179-be08-9879815a9f90\"></attachment>"];
[chatMessage setBody:body];
NSMutableArray *attachmentsList = [[NSMutableArray alloc] init];
MSGraphChatMessageAttachment *attachments = [[MSGraphChatMessageAttachment alloc] init];
[attachments setId:@"153fa47d-18c9-4179-be08-9879815a9f90"];
[attachments setContentType:@"reference"];
[attachments setContentUrl:@"https://m365x987948.sharepoint.com/sites/test/Shared%20Documents/General/test%20doc.docx"];
[attachments setName:@"Budget.docx"];
[attachmentsList addObject: attachments];
[chatMessage setAttachments:attachmentsList];

NSError *error;
NSData *chatMessageData = [chatMessage getSerializedDataWithError:&error];
[urlRequest setHTTPBody:chatMessageData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```