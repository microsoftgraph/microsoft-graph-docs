---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/e1234567-e123-4276-55555-6232b0e3a89a/channels/a7654321-e321-0000-0000-123b0e3a00a/messages/19:a21b0b0c05194ebc9e30000000000f61@thread.skype"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphChatMessage *chatMessage = [[MSGraphChatMessage alloc] init];
MSGraphChatMessagePolicyViolation *policyViolation = [[MSGraphChatMessagePolicyViolation alloc] init];
MSGraphChatMessagePolicyViolationPolicyTip *policyTip = [[MSGraphChatMessagePolicyViolationPolicyTip alloc] init];
[policyTip setGeneralText:@"This item has been blocked by the administrator."];
[policyTip setComplianceUrl:@"https://contoso.com/dlp-policy-page"];
NSMutableArray *matchedConditionDescriptionsList = [[NSMutableArray alloc] init];
[matchedConditionDescriptionsList addObject: @"Credit Card Number"];
[policyTip setMatchedConditionDescriptions:matchedConditionDescriptionsList];
[policyViolation setPolicyTip:policyTip];
[policyViolation setVerdictDetails: [MSGraphChatMessagePolicyViolationVerdictDetailsTypes allowOverrideWithoutJustification]];
[policyViolation setDlpAction: [MSGraphChatMessagePolicyViolationDlpActionTypes blockAccess]];
[chatMessage setPolicyViolation:policyViolation];

NSError *error;
NSData *chatMessageData = [chatMessage getSerializedDataWithError:&error];
[urlRequest setHTTPBody:chatMessageData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```