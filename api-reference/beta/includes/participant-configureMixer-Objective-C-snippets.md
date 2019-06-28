---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/app/calls/{id}/participants/configureMixer"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *clientContext = @"d45324c1-fcb5-430a-902c-f20af696537c";
payloadDictionary[@"clientContext"] = clientContext;

NSMutableArray *participantMixerLevelsList = [[NSMutableArray alloc] init];
MSGraphParticipantMixerLevel *participantMixerLevels = [[MSGraphParticipantMixerLevel alloc] init];
[participantMixerLevels setParticipant:@"550fae72-d251-43ec-868c-373732c2704f"];
[participantMixerLevels setExclusive: true];
MSGraphAudioDuckingConfiguration *ducking = [[MSGraphAudioDuckingConfiguration alloc] init];
[ducking setRampActive: 50];
[ducking setRampInactive: 50];
[ducking setLowerLevel: 10];
[ducking setUpperLevel: 50];
[participantMixerLevels setDucking:ducking];
NSMutableArray *sourceLevelsList = [[NSMutableArray alloc] init];
MSGraphAudioSourceLevel *sourceLevels = [[MSGraphAudioSourceLevel alloc] init];
[sourceLevels setParticipant:@"632899f8-2ea1-4604-8413-27bd2892079f"];
[sourceLevels setLevel: 50];
[sourceLevels setDuckOthers: false];
[sourceLevelsList addObject: sourceLevels];
[participantMixerLevels setSourceLevels:sourceLevelsList];
[participantMixerLevelsList addObject: participantMixerLevels];
payloadDictionary[@"participantMixerLevels"] = participantMixerLevelsList;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```