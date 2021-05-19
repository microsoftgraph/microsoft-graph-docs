---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationClass *educationClass = [[MSGraphEducationClass alloc] init];
[educationClass setDisplayName:@"String"];
[educationClass setMailNickname:@"String"];
[educationClass setDescription:@"String"];
MSGraphIdentitySet *createdBy = [[MSGraphIdentitySet alloc] init];
[educationClass setCreatedBy:createdBy];
[educationClass setClassCode:@"String"];
[educationClass setExternalName:@"String"];
[educationClass setExternalId:@"String"];
[educationClass setExternalSource: [MSGraphEducationExternalSource sis]];
[educationClass setExternalSourceDetail:@"String"];
[educationClass setGrade:@"String"];
MSGraphEducationTerm *term = [[MSGraphEducationTerm alloc] init];
[educationClass setTerm:term];

NSError *error;
NSData *educationClassData = [educationClass getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationClassData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```