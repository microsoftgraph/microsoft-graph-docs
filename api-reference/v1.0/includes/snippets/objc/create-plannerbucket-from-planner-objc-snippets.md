---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/planner/buckets"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPlannerBucket *plannerBucket = [[MSGraphPlannerBucket alloc] init];
[plannerBucket setName:@"Advertising"];
[plannerBucket setPlanId:@"xqQg5FS2LkCp935s-FIFm2QAFkHM"];
[plannerBucket setOrderHint:@" !"];

NSError *error;
NSData *plannerBucketData = [plannerBucket getSerializedDataWithError:&error];
[urlRequest setHTTPBody:plannerBucketData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```