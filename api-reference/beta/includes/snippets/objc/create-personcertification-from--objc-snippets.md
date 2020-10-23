---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/certifications"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonCertification *personCertification = [[MSGraphPersonCertification alloc] init];
[personCertification setCertificationId:@"KB-1235466333663322"];
[personCertification setDescription:@"Blackbelt in Marketing - Brand Management"];
[personCertification setDisplayName:@"Marketing Blackbelt - Brand Management"];
[personCertification setThumbnailUrl:@"https://iame.io/dfhdfdfd334.jpg"];
[personCertification setWebUrl:@"https://www.iame.io/blackbelt"];

NSError *error;
NSData *personCertificationData = [personCertification getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personCertificationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```