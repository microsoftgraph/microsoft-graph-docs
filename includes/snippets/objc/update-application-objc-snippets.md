---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/applications/bf21f7e9-9d25-4da2-82ab-7fdd85049f83"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"appplication/json" forHTTPHeaderField:@"Content-Type"];

MSGraphApplication *application = [[MSGraphApplication alloc] init];
MSGraphOnPremisesPublishing *onPremisesPublishing = [[MSGraphOnPremisesPublishing alloc] init];
MSGraphOnPremisesPublishingSingleSignOn *singleSignOnSettings = [[MSGraphOnPremisesPublishingSingleSignOn alloc] init];
MSGraphKerberosSignOnSettings *kerberosSignOnSettings = [[MSGraphKerberosSignOnSettings alloc] init];
[kerberosSignOnSettings setKerberosServicePrincipalName:@"HTTP/iwademo.contoso.com"];
[kerberosSignOnSettings setKerberosSignOnMappingAttributeType: [MSGraphKerberosSignOnMappingAttributeType userPrincipalName]];
[singleSignOnSettings setKerberosSignOnSettings:kerberosSignOnSettings];
[singleSignOnSettings setSingleSignOnMode: [MSGraphSingleSignOnMode onPremisesKerberos]];
[onPremisesPublishing setSingleSignOnSettings:singleSignOnSettings];
[application setOnPremisesPublishing:onPremisesPublishing];

NSError *error;
NSData *applicationData = [application getSerializedDataWithError:&error];
[urlRequest setHTTPBody:applicationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```