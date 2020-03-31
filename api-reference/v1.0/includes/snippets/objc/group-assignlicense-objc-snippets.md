---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/groups/1ad75eeb-7e5a-4367-a493-9214d90d54d0/assignLicense"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *addLicensesList = [[NSMutableArray alloc] init];
MSGraphAssignedLicense *addLicenses = [[MSGraphAssignedLicense alloc] init];
NSMutableArray *disabledPlansList = [[NSMutableArray alloc] init];
[disabledPlansList addObject: @"11b0131d-43c8-4bbb-b2c8-e80f9a50834a"];
[addLicenses setDisabledPlans:disabledPlansList];
[addLicenses setSkuId:@"skuId-value-1"];
[addLicensesList addObject: addLicenses];
MSGraphAssignedLicense *addLicenses = [[MSGraphAssignedLicense alloc] init];
NSMutableArray *disabledPlansList = [[NSMutableArray alloc] init];
[disabledPlansList addObject: @"a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235"];
[addLicenses setDisabledPlans:disabledPlansList];
[addLicenses setSkuId:@"skuId-value-2"];
[addLicensesList addObject: addLicenses];
payloadDictionary[@"addLicenses"] = addLicensesList;

NSMutableArray *removeLicensesList = [[NSMutableArray alloc] init];
payloadDictionary[@"removeLicenses"] = removeLicensesList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```