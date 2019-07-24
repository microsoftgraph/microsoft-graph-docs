---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/groups/37df2ff0-0de0-4c33-8aee-75289364aef6/threads/AAQkADJizZJpEWwqDHsEpV_KA==/posts/AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA=/reply"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

MSGraphPost *post = [[MSGraphPost alloc] init];
MSGraphItemBody *body = [[MSGraphItemBody alloc] init];
[body setContentType: [MSGraphBodyType html]];
[body setContent:@"<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"];
[post setBody:body];
NSMutableArray *extensionsList = [[NSMutableArray alloc] init];
MSGraphExtension *extensions = [[MSGraphExtension alloc] init];
[extensions setExtensionName:@"Com.Contoso.HR"];
[extensions setCompanyName:@"Contoso"];
[extensions setExpirationDate: "2015-07-03T13:04:00Z"];
NSMutableArray *topPicksList = [[NSMutableArray alloc] init];
[topPicksList addObject: @"Employees only"];
[topPicksList addObject: @"Add spouse or guest"];
[topPicksList addObject: @"Add family"];
[extensions setTopPicks:topPicksList];
[extensionsList addObject: extensions];
[post setExtensions:extensionsList];
payloadDictionary[@"post"] = post;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```