---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/translateExchangeIds"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSMutableArray *inputIdsList = [[NSMutableArray alloc] init];
[inputIdsList addObject: @"{rest-formatted-id-1}"];
[inputIdsList addObject: @"{rest-formatted-id-2}"];
payloadDictionary[@"inputIds"] = inputIdsList;

MSGraphExchangeIdFormat *sourceIdType = [MSGraphExchangeIdFormat restId];
payloadDictionary[@"sourceIdType"] = sourceIdType;

MSGraphExchangeIdFormat *targetIdType = [MSGraphExchangeIdFormat restImmutableEntryId];
payloadDictionary[@"targetIdType"] = targetIdType;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```