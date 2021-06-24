---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/compliance/ediscovery/cases/{caseId}/legalHolds"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEdiscoveryLegalHold *legalHold = [[MSGraphEdiscoveryLegalHold alloc] init];
[legalHold setDescription:@"String"];
MSGraphIdentitySet *createdBy = [[MSGraphIdentitySet alloc] init];
[legalHold setCreatedBy:createdBy];
[legalHold setIsEnabled:@"Boolean"];
[legalHold setStatus: [MSGraphEdiscoveryLegalHoldStatus Pending]];
[legalHold setContentQuery:@"String"];
NSMutableArray *errorsList = [[NSMutableArray alloc] init];
[errorsList addObject: @"String"];
[legalHold setErrors:errorsList];
[legalHold setDisplayName:@"String"];

NSError *error;
NSData *legalHoldData = [legalHold getSerializedDataWithError:&error];
[urlRequest setHTTPBody:legalHoldData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```