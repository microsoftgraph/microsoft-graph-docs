---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/informationProtection/threatAssessmentRequests"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphThreatAssessmentRequest *threatAssessmentRequest = [[MSGraphThreatAssessmentRequest alloc] init];
[threatAssessmentRequest setRecipientEmail:@"tifc@a830edad9050849EQTPWBJZXODQ.onmicrosoft.com"];
[threatAssessmentRequest setExpectedAssessment: [MSGraphThreatExpectedAssessment block]];
[threatAssessmentRequest setCategory: [MSGraphThreatCategory malware]];
[threatAssessmentRequest setContentData:@"UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC....."];

NSError *error;
NSData *threatAssessmentRequestData = [threatAssessmentRequest getSerializedDataWithError:&error];
[urlRequest setHTTPBody:threatAssessmentRequestData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```