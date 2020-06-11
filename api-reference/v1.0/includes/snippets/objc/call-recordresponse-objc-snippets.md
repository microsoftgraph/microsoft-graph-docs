---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/communications/calls/{id}/recordResponse"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

BOOL bargeInAllowed = YES;
payloadDictionary[@"bargeInAllowed"] = bargeInAllowed;

NSString *clientContext = @"d45324c1-fcb5-430a-902c-f20af696537c";
payloadDictionary[@"clientContext"] = clientContext;

NSMutableArray *promptsList = [[NSMutableArray alloc] init];
MSGraphPrompt *prompts = [[MSGraphPrompt alloc] init];
MSGraphMediaInfo *mediaInfo = [[MSGraphMediaInfo alloc] init];
[mediaInfo setUri:@"https://cdn.contoso.com/beep.wav"];
[mediaInfo setResourceId:@"1D6DE2D4-CD51-4309-8DAA-70768651088E"];
[prompts setMediaInfo:mediaInfo];
[promptsList addObject: prompts];
payloadDictionary[@"prompts"] = promptsList;

int32_t maxRecordDurationInSeconds = 10;
payloadDictionary[@"maxRecordDurationInSeconds"] = maxRecordDurationInSeconds;

int32_t initialSilenceTimeoutInSeconds = 5;
payloadDictionary[@"initialSilenceTimeoutInSeconds"] = initialSilenceTimeoutInSeconds;

int32_t maxSilenceTimeoutInSeconds = 2;
payloadDictionary[@"maxSilenceTimeoutInSeconds"] = maxSilenceTimeoutInSeconds;

BOOL playBeep = YES;
payloadDictionary[@"playBeep"] = playBeep;

NSMutableArray *stopTonesList = [[NSMutableArray alloc] init];
[stopTonesList addObject: @"#"];
[stopTonesList addObject: @"1"];
[stopTonesList addObject: @"*"];
payloadDictionary[@"stopTones"] = stopTonesList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```