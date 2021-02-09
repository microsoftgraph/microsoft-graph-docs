---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/organization/{organizationId}/settings/profileCardProperties"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphProfileCardProperty *profileCardProperty = [[MSGraphProfileCardProperty alloc] init];
[profileCardProperty setDirectoryPropertyName:@"CustomAttribute1"];
NSMutableArray *annotationsList = [[NSMutableArray alloc] init];
MSGraphProfileCardAnnotation *annotations = [[MSGraphProfileCardAnnotation alloc] init];
[annotations setDisplayName:@"Cost Center"];
NSMutableArray *localizationsList = [[NSMutableArray alloc] init];
MSGraphDisplayNameLocalization *localizations = [[MSGraphDisplayNameLocalization alloc] init];
[localizations setLanguageTag:@"ru-RU"];
[localizations setDisplayName:@"центр затрат"];
[localizationsList addObject: localizations];
[annotations setLocalizations:localizationsList];
[annotationsList addObject: annotations];
[profileCardProperty setAnnotations:annotationsList];

NSError *error;
NSData *profileCardPropertyData = [profileCardProperty getSerializedDataWithError:&error];
[urlRequest setHTTPBody:profileCardPropertyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```