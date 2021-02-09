---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RegionalAndLanguageSettings regionalAndLanguageSettings = new RegionalAndLanguageSettings();
LinkedList<LocaleInfo> authoringLanguagesList = new LinkedList<LocaleInfo>();
LocaleInfo authoringLanguages = new LocaleInfo();
authoringLanguages.locale = "en-US";
authoringLanguagesList.add(authoringLanguages);
LocaleInfo authoringLanguages1 = new LocaleInfo();
authoringLanguages1.locale = "es-MX";
authoringLanguagesList.add(authoringLanguages1);
regionalAndLanguageSettings.authoringLanguages = authoringLanguagesList;
LocaleInfo defaultRegionalFormat = new LocaleInfo();
defaultRegionalFormat.locale = "en-US";
regionalAndLanguageSettings.defaultRegionalFormat = defaultRegionalFormat;

graphClient.me().settings().regionalAndLanguageSettings()
	.buildRequest()
	.patch(regionalAndLanguageSettings);

```