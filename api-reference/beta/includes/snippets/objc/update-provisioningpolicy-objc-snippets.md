---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/deviceManagement/virtualEndpoint/provisioningPolicies/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCloudPcProvisioningPolicy *cloudPcProvisioningPolicy = [[MSGraphCloudPcProvisioningPolicy alloc] init];
[cloudPcProvisioningPolicy setDisplayName:@"Display Name value"];
[cloudPcProvisioningPolicy setDescription:@"Description value"];
[cloudPcProvisioningPolicy setOnPremisesConnectionId:@"4e47d0f6-6f77-44f0-8893-c0fe1701ffff"];
[cloudPcProvisioningPolicy setImageId:@"Image ID value"];
[cloudPcProvisioningPolicy setImageDisplayName:@"Image Display Name value"];
[cloudPcProvisioningPolicy setImageType: [MSGraphCloudPcProvisioningPolicyImageType custom]];

NSError *error;
NSData *cloudPcProvisioningPolicyData = [cloudPcProvisioningPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:cloudPcProvisioningPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```