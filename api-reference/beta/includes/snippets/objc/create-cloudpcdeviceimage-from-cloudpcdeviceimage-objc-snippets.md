---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/deviceManagement/virtualEndpoint/deviceImages"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCloudPcDeviceImage *cloudPcDeviceImage = [[MSGraphCloudPcDeviceImage alloc] init];
[cloudPcDeviceImage setDisplayName:@"Display Name value"];
[cloudPcDeviceImage setOsBuildNumber:@"OS Build Number value"];
[cloudPcDeviceImage setOperatingSystem:@"Operating System value"];
[cloudPcDeviceImage setVersion:@"Version value"];
[cloudPcDeviceImage setSourceImageResourceId:@"/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage"];

NSError *error;
NSData *cloudPcDeviceImageData = [cloudPcDeviceImage getSerializedDataWithError:&error];
[urlRequest setHTTPBody:cloudPcDeviceImageData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```