---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/printers/create"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *displayName = @"Test Printer";
payloadDictionary[@"displayName"] = displayName;

NSString *manufacturer = @"Test Printer Manufacturer";
payloadDictionary[@"manufacturer"] = manufacturer;

NSString *model = @"Test Printer Model";
payloadDictionary[@"model"] = model;

payloadDictionary[@"physicalDeviceId"] = physicalDeviceId;

BOOL hasPhysicalDevice = NO;
payloadDictionary[@"hasPhysicalDevice"] = hasPhysicalDevice;

MSGraphPrintCertificateSigningRequest *certificateSigningRequest = [[MSGraphPrintCertificateSigningRequest alloc] init];
[certificateSigningRequest setContent:@"{content}"];
[certificateSigningRequest setTransportKey:@"{sampleTransportKey}"];
payloadDictionary[@"certificateSigningRequest"] = certificateSigningRequest;

payloadDictionary[@"connectorId"] = connectorId;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```