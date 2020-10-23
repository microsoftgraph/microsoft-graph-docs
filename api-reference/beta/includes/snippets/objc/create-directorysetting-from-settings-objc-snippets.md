---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/settings"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphDirectorySetting *directorySetting = [[MSGraphDirectorySetting alloc] init];
[directorySetting setTemplateId:@"templateId-value"];
NSMutableArray *valuesList = [[NSMutableArray alloc] init];
MSGraphSettingValue *values = [[MSGraphSettingValue alloc] init];
[values setName:@"name-value"];
[values setValue:@"value-value"];
[valuesList addObject: values];
[directorySetting setValues:valuesList];

NSError *error;
NSData *directorySettingData = [directorySetting getSerializedDataWithError:&error];
[urlRequest setHTTPBody:directorySettingData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```