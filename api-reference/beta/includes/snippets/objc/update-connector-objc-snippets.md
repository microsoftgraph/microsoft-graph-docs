---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/connectors/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPrintConnector *printConnector = [[MSGraphPrintConnector alloc] init];
[printConnector setDisplayName:@"ConnectorName"];
[printConnector setFullyQualifiedDomainName:@"CONNECTOR-MACHINE"];
[printConnector setOperatingSystem:@"Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555"];
[printConnector setAppVersion:@"0.19.7338.23496"];
MSGraphPrinterLocation *location = [[MSGraphPrinterLocation alloc] init];
[location setLatitude: 1.1];
[location setLongitude: 2.2];
[location setAltitudeInMeters: 3];
[printConnector setLocation:location];

NSError *error;
NSData *printConnectorData = [printConnector getSerializedDataWithError:&error];
[urlRequest setHTTPBody:printConnectorData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```