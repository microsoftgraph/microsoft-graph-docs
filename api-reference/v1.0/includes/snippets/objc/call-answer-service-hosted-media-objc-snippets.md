---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/communications/calls/57DAB8B1894C409AB240BD8BEAE78896/answer"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *callbackUri = @"https://bot.contoso.com/api/calls";
payloadDictionary[@"callbackUri"] = callbackUri;

NSMutableArray *acceptedModalitiesList = [[NSMutableArray alloc] init];
[acceptedModalitiesList addObject: @"audio"];
payloadDictionary[@"acceptedModalities"] = acceptedModalitiesList;

MSGraphMediaConfig *mediaConfig = [[MSGraphMediaConfig alloc] init];
NSMutableArray *preFetchMediaList = [[NSMutableArray alloc] init];
MSGraphMediaInfo *preFetchMedia = [[MSGraphMediaInfo alloc] init];
[preFetchMedia setUri:@"https://cdn.contoso.com/beep.wav"];
[preFetchMedia setResourceId:@"1D6DE2D4-CD51-4309-8DAA-70768651088E"];
[preFetchMediaList addObject: preFetchMedia];
MSGraphMediaInfo *preFetchMedia = [[MSGraphMediaInfo alloc] init];
[preFetchMedia setUri:@"https://cdn.contoso.com/cool.wav"];
[preFetchMedia setResourceId:@"1D6DE2D4-CD51-4309-8DAA-70768651088F"];
[preFetchMediaList addObject: preFetchMedia];
[mediaConfig setPreFetchMedia:preFetchMediaList];
payloadDictionary[@"mediaConfig"] = mediaConfig;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```