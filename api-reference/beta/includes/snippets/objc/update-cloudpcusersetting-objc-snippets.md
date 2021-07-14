---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/deviceManagement/virtualEndpoint/userSettings/b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCloudPcUserSetting *cloudPcUserSetting = [[MSGraphCloudPcUserSetting alloc] init];
[cloudPcUserSetting setDisplayName:@"Example"];
[cloudPcUserSetting setSelfServiceEnabled: true];
[cloudPcUserSetting setLocalAdminEnabled: false];

NSError *error;
NSData *cloudPcUserSettingData = [cloudPcUserSetting getSerializedDataWithError:&error];
[urlRequest setHTTPBody:cloudPcUserSettingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```