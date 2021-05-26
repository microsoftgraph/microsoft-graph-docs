---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/settings/regionalandlanguagesettings"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphRegionalAndLanguageSettings *regionalAndLanguageSettings = [[MSGraphRegionalAndLanguageSettings alloc] init];
MSGraphLocaleInfo *defaultDisplayLanguage = [[MSGraphLocaleInfo alloc] init];
[defaultDisplayLanguage setLocale:@"en-US"];
[regionalAndLanguageSettings setDefaultDisplayLanguage:defaultDisplayLanguage];
NSMutableArray *authoringLanguagesList = [[NSMutableArray alloc] init];
MSGraphLocaleInfo *authoringLanguages = [[MSGraphLocaleInfo alloc] init];
[authoringLanguages setLocale:@"fr-FR"];
[authoringLanguagesList addObject: authoringLanguages];
MSGraphLocaleInfo *authoringLanguages = [[MSGraphLocaleInfo alloc] init];
[authoringLanguages setLocale:@"de-DE"];
[authoringLanguagesList addObject: authoringLanguages];
[regionalAndLanguageSettings setAuthoringLanguages:authoringLanguagesList];
MSGraphLocaleInfo *defaultTranslationLanguage = [[MSGraphLocaleInfo alloc] init];
[defaultTranslationLanguage setLocale:@"en-US"];
[regionalAndLanguageSettings setDefaultTranslationLanguage:defaultTranslationLanguage];
MSGraphLocaleInfo *defaultSpeechInputLanguage = [[MSGraphLocaleInfo alloc] init];
[defaultSpeechInputLanguage setLocale:@"en-US"];
[regionalAndLanguageSettings setDefaultSpeechInputLanguage:defaultSpeechInputLanguage];
MSGraphLocaleInfo *defaultRegionalFormat = [[MSGraphLocaleInfo alloc] init];
[defaultRegionalFormat setLocale:@"en-GB"];
[regionalAndLanguageSettings setDefaultRegionalFormat:defaultRegionalFormat];
MSGraphRegionalFormatOverrides *regionalFormatOverrides = [[MSGraphRegionalFormatOverrides alloc] init];
[regionalFormatOverrides setCalendar:@"Gregorian Calendar"];
[regionalFormatOverrides setFirstDayOfWeek:@"Sunday"];
[regionalFormatOverrides setShortDateFormat:@"yyyy-MM-dd"];
[regionalFormatOverrides setLongDateFormat:@"dddd, MMMM d, yyyy"];
[regionalFormatOverrides setShortTimeFormat:@"HH:mm"];
[regionalFormatOverrides setLongTimeFormat:@"h:mm:ss tt"];
[regionalFormatOverrides setTimeZone:@"Pacific Standard Time"];
[regionalAndLanguageSettings setRegionalFormatOverrides:regionalFormatOverrides];
MSGraphTranslationPreferences *translationPreferences = [[MSGraphTranslationPreferences alloc] init];
[translationPreferences setTranslationBehavior: [MSGraphTranslationBehavior Yes]];
NSMutableArray *languageOverridesList = [[NSMutableArray alloc] init];
MSGraphTranslationLanguageOverride *languageOverrides = [[MSGraphTranslationLanguageOverride alloc] init];
[languageOverrides setLanguageTag:@"fr"];
[languageOverrides setTranslationBehavior: [MSGraphTranslationBehavior Yes]];
[languageOverridesList addObject: languageOverrides];
[translationPreferences setLanguageOverrides:languageOverridesList];
[regionalAndLanguageSettings setTranslationPreferences:translationPreferences];

NSError *error;
NSData *regionalAndLanguageSettingsData = [regionalAndLanguageSettings getSerializedDataWithError:&error];
[urlRequest setHTTPBody:regionalAndLanguageSettingsData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```