---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/contacts/AAMkADh6v5AAAvgTCEAAA="]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphContact *contact = [[MSGraphContact alloc] init];
NSMutableArray *emailAddressesList = [[NSMutableArray alloc] init];
MSGraphTypedEmailAddress *emailAddresses = [[MSGraphTypedEmailAddress alloc] init];
[emailAddresses setType: [MSGraphEmailType personal]];
[emailAddresses setName:@"Pavel Bansky"];
[emailAddresses setAddress:@"pavelb@adatum.onmicrosoft.com"];
[emailAddressesList addObject: emailAddresses];
MSGraphTypedEmailAddress *emailAddresses = [[MSGraphTypedEmailAddress alloc] init];
[emailAddresses setAddress:@"pavelb@fabrikam.onmicrosoft.com"];
[emailAddresses setName:@"Pavel Bansky"];
[emailAddresses setType: [MSGraphEmailType other]];
[emailAddresses setOtherLabel:@"Volunteer work"];
[emailAddressesList addObject: emailAddresses];
[contact setEmailAddresses:emailAddressesList];

NSError *error;
NSData *contactData = [contact getSerializedDataWithError:&error];
[urlRequest setHTTPBody:contactData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```