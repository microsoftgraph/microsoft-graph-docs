---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/deviceManagement/virtualEndpoint/provisioningPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCloudPcProvisioningPolicy *cloudPcProvisioningPolicy = [[MSGraphCloudPcProvisioningPolicy alloc] init];
[cloudPcProvisioningPolicy setDisplayName:@"Display Name value"];
[cloudPcProvisioningPolicy setDescription:@"Description value"];
[cloudPcProvisioningPolicy setOnPremisesConnectionId:@"6bf90392-5fea-459a-9e9d-a2484abbffff"];
[cloudPcProvisioningPolicy setImageId:@"Image ID value"];
[cloudPcProvisioningPolicy setImageDisplayName:@"Image Display Name value"];
[cloudPcProvisioningPolicy setImageType: [MSGraphCloudPcProvisioningPolicyImageType gallery]];

NSError *error;
NSData *cloudPcProvisioningPolicyData = [cloudPcProvisioningPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:cloudPcProvisioningPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```