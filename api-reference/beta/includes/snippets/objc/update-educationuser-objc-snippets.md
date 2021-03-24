---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/users/{educationUserId}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationUser *educationUser = [[MSGraphEducationUser alloc] init];
NSMutableArray *relatedContactsList = [[NSMutableArray alloc] init];
MSGraphRelatedContact *relatedContacts = [[MSGraphRelatedContact alloc] init];
[relatedContacts setDisplayName:@"Father Time"];
[relatedContacts setEmailAddress:@"father@time.com"];
[relatedContacts setMobilePhone:@"4251231234"];
[relatedContacts setRelationship: [MSGraphContactRelationship guardian]];
[relatedContacts setAccessConsent: true];
[relatedContactsList addObject: relatedContacts];
MSGraphRelatedContact *relatedContacts = [[MSGraphRelatedContact alloc] init];
[relatedContacts setDisplayName:@"Mother Nature"];
[relatedContacts setEmailAddress:@"mother@nature.co.uk"];
[relatedContacts setMobilePhone:@"3251231234"];
[relatedContacts setRelationship: [MSGraphContactRelationship parent]];
[relatedContacts setAccessConsent: true];
[relatedContactsList addObject: relatedContacts];
[educationUser setRelatedContacts:relatedContactsList];

NSError *error;
NSData *educationUserData = [educationUser getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationUserData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```