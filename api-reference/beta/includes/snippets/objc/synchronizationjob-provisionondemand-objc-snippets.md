---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *parametersList = [[NSMutableArray alloc] init];
MSGraphSynchronizationJobApplicationParameters *parameters = [[MSGraphSynchronizationJobApplicationParameters alloc] init];
NSMutableArray *subjectsList = [[NSMutableArray alloc] init];
MSGraphSynchronizationJobSubject *subjects = [[MSGraphSynchronizationJobSubject alloc] init];
[subjects setObjectId:@"9bb0f679-a883-4a6f-8260-35b491b8b8c8"];
[subjects setObjectTypeName:@"User"];
[subjectsList addObject: subjects];
[parameters setSubjects:subjectsList];
[parameters setRuleId:@"ea807875-5618-4f0a-9125-0b46a05298ca"];
[parametersList addObject: parameters];
payloadDictionary[@"parameters"] = parametersList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```