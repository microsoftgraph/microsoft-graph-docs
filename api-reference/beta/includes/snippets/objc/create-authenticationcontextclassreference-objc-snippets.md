---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identity/conditionalAccess/authenticationContextClassReferences"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAuthenticationContextClassReference *authenticationContextClassReference = [[MSGraphAuthenticationContextClassReference alloc] init];
[authenticationContextClassReference setId:@"c1"];
[authenticationContextClassReference setDisplayName:@"Contoso medium"];
[authenticationContextClassReference setDescription:@"Medium protection level defined for Contoso policy"];
[authenticationContextClassReference setIsAvailable: true];

NSError *error;
NSData *authenticationContextClassReferenceData = [authenticationContextClassReference getSerializedDataWithError:&error];
[urlRequest setHTTPBody:authenticationContextClassReferenceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```