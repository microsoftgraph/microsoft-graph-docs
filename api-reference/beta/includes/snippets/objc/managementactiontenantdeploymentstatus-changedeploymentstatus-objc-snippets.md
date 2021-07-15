---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses/changeDeploymentStatus"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *tenantGroupId = @"String";
payloadDictionary[@"tenantGroupId"] = tenantGroupId;

NSString *tenantId = @"String";
payloadDictionary[@"tenantId"] = tenantId;

NSString *managementActionId = @"String";
payloadDictionary[@"managementActionId"] = managementActionId;

NSString *managementTemplateId = @"String";
payloadDictionary[@"managementTemplateId"] = managementTemplateId;

NSString *status = @"String";
payloadDictionary[@"status"] = status;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```