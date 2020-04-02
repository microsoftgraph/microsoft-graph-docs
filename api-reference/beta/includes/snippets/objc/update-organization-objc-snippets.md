---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphOrganization *organization = [[MSGraphOrganization alloc] init];
NSMutableArray *marketingNotificationEmailsList = [[NSMutableArray alloc] init];
[marketingNotificationEmailsList addObject: @"marketing@contoso.com"];
[organization setMarketingNotificationEmails:marketingNotificationEmailsList];
MSGraphPrivacyProfile *privacyProfile = [[MSGraphPrivacyProfile alloc] init];
[privacyProfile setContactEmail:@"alice@contoso.com"];
[privacyProfile setStatementUrl:@"https://contoso.com/privacyStatement"];
[organization setPrivacyProfile:privacyProfile];
NSMutableArray *securityComplianceNotificationMailsList = [[NSMutableArray alloc] init];
[securityComplianceNotificationMailsList addObject: @"security@contoso.com"];
[organization setSecurityComplianceNotificationMails:securityComplianceNotificationMailsList];
NSMutableArray *securityComplianceNotificationPhonesList = [[NSMutableArray alloc] init];
[securityComplianceNotificationPhonesList addObject: @"(123) 456-7890"];
[organization setSecurityComplianceNotificationPhones:securityComplianceNotificationPhonesList];
NSMutableArray *technicalNotificationMailsList = [[NSMutableArray alloc] init];
[technicalNotificationMailsList addObject: @"tech@contoso.com"];
[organization setTechnicalNotificationMails:technicalNotificationMailsList];

NSError *error;
NSData *organizationData = [organization getSerializedDataWithError:&error];
[urlRequest setHTTPBody:organizationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```