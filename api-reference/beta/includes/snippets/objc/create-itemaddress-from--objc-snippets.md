---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/addresses"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphItemAddress *itemAddress = [[MSGraphItemAddress alloc] init];
[itemAddress setDisplayName:@"Home"];
MSGraphPhysicalAddress *detail = [[MSGraphPhysicalAddress alloc] init];
[detail setType: [MSGraphPhysicalAddressType home]];
[detail setPostOfficeBox: null];
[detail setStreet:@"221B Baker Street"];
[detail setCity:@"London"];
[detail setState: null];
[detail setCountryOrRegion:@"United Kingdom"];
[detail setPostalCode:@"E14 3TD"];
[itemAddress setDetail:detail];

NSError *error;
NSData *itemAddressData = [itemAddress getSerializedDataWithError:&error];
[urlRequest setHTTPBody:itemAddressData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```