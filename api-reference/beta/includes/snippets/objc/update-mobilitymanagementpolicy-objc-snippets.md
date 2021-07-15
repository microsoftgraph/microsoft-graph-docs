---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/policies/mobileDeviceManagementPolicies/ab90bacf-55a3-4a3e-839a-aa4b74e4f020"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphMobilityManagementPolicy *mobilityManagementPolicy = [[MSGraphMobilityManagementPolicy alloc] init];
[mobilityManagementPolicy setComplianceUrl:@"https://portal.uem.contoso.com/?portalAction=Compliance"];
[mobilityManagementPolicy setDiscoveryUrl:@"https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc"];
[mobilityManagementPolicy setTermsOfUseUrl:@"https://portal.uem.contoso.com/TermsofUse.aspx"];

NSError *error;
NSData *mobilityManagementPolicyData = [mobilityManagementPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:mobilityManagementPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```