---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/teams/{id}/clone"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *displayName = @"Library Assist";
payloadDictionary[@"displayName"] = displayName;

NSString *description = @"Self help community for library";
payloadDictionary[@"description"] = description;

NSString *mailNickname = @"libassist";
payloadDictionary[@"mailNickname"] = mailNickname;

MSGraphClonableTeamParts *partsToClone = [MSGraphClonableTeamParts apps];
payloadDictionary[@"partsToClone"] = partsToClone;

MSGraphTeamVisibilityType *visibility = [MSGraphTeamVisibilityType public];
payloadDictionary[@"visibility"] = visibility;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```