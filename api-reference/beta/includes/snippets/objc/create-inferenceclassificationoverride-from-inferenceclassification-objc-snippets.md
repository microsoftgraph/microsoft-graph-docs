---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/inferenceClassification/overrides"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphInferenceClassificationOverride *inferenceClassificationOverride = [[MSGraphInferenceClassificationOverride alloc] init];
[inferenceClassificationOverride setClassifyAs: [MSGraphInferenceClassificationType focused]];
MSGraphEmailAddress *senderEmailAddress = [[MSGraphEmailAddress alloc] init];
[senderEmailAddress setName:@"Samantha Booth"];
[senderEmailAddress setAddress:@"samanthab@adatum.onmicrosoft.com"];
[inferenceClassificationOverride setSenderEmailAddress:senderEmailAddress];

NSError *error;
NSData *inferenceClassificationOverrideData = [inferenceClassificationOverride getSerializedDataWithError:&error];
[urlRequest setHTTPBody:inferenceClassificationOverrideData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```