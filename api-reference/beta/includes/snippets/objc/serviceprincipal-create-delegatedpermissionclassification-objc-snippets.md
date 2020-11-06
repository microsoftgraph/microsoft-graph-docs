---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}/delegatedPermissionClassifications"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphDelegatedPermissionClassification *delegatedPermissionClassification = [[MSGraphDelegatedPermissionClassification alloc] init];
[delegatedPermissionClassification setPermissionId:@"e1fe6dd8-ba31-4d61-89e7-88639da4683d"];
[delegatedPermissionClassification setPermissionName:@"User.Read"];
[delegatedPermissionClassification setClassification: [MSGraphPermissionClassificationType low]];

NSError *error;
NSData *delegatedPermissionClassificationData = [delegatedPermissionClassification getSerializedDataWithError:&error];
[urlRequest setHTTPBody:delegatedPermissionClassificationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```