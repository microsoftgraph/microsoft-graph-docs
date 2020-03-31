---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/printers/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPrinter *printer = [[MSGraphPrinter alloc] init];
[printer setName:@"PrinterName"];
MSGraphPrinterLocation *location = [[MSGraphPrinterLocation alloc] init];
[location setLatitude: 1.1];
[location setLongitude: 2.2];
[location setAltitudeInMeters: 3];
[printer setLocation:location];

NSError *error;
NSData *printerData = [printer getSerializedDataWithError:&error];
[urlRequest setHTTPBody:printerData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```