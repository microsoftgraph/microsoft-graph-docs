---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/settings/regionalandlanguagesettings"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphRegionalAndLanguageSettings *regionalAndLanguageSettings = [[MSGraphRegionalAndLanguageSettings alloc] init];
NSMutableArray *authoringLanguagesList = [[NSMutableArray alloc] init];
MSGraphLocaleInfo *authoringLanguages = [[MSGraphLocaleInfo alloc] init];
[authoringLanguages setLocale:@"en-US"];
[authoringLanguagesList addObject: authoringLanguages];
MSGraphLocaleInfo *authoringLanguages = [[MSGraphLocaleInfo alloc] init];
[authoringLanguages setLocale:@"es-MX"];
[authoringLanguagesList addObject: authoringLanguages];
[regionalAndLanguageSettings setAuthoringLanguages:authoringLanguagesList];
MSGraphLocaleInfo *defaultRegionalFormat = [[MSGraphLocaleInfo alloc] init];
[defaultRegionalFormat setLocale:@"en-US"];
[regionalAndLanguageSettings setDefaultRegionalFormat:defaultRegionalFormat];

NSError *error;
NSData *regionalAndLanguageSettingsData = [regionalAndLanguageSettings getSerializedDataWithError:&error];
[urlRequest setHTTPBody:regionalAndLanguageSettingsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```