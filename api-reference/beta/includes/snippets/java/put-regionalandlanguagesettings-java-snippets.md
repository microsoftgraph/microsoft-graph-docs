---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RegionalAndLanguageSettings regionalAndLanguageSettings = new RegionalAndLanguageSettings();
LocaleInfo defaultDisplayLanguage = new LocaleInfo();
defaultDisplayLanguage.locale = "en-US";
regionalAndLanguageSettings.defaultDisplayLanguage = defaultDisplayLanguage;
LinkedList<LocaleInfo> authoringLanguagesList = new LinkedList<LocaleInfo>();
LocaleInfo authoringLanguages = new LocaleInfo();
authoringLanguages.locale = "fr-FR";
authoringLanguagesList.add(authoringLanguages);
LocaleInfo authoringLanguages1 = new LocaleInfo();
authoringLanguages1.locale = "de-DE";
authoringLanguagesList.add(authoringLanguages1);
regionalAndLanguageSettings.authoringLanguages = authoringLanguagesList;
LocaleInfo defaultTranslationLanguage = new LocaleInfo();
defaultTranslationLanguage.locale = "en-US";
regionalAndLanguageSettings.defaultTranslationLanguage = defaultTranslationLanguage;
LocaleInfo defaultSpeechInputLanguage = new LocaleInfo();
defaultSpeechInputLanguage.locale = "en-US";
regionalAndLanguageSettings.defaultSpeechInputLanguage = defaultSpeechInputLanguage;
LocaleInfo defaultRegionalFormat = new LocaleInfo();
defaultRegionalFormat.locale = "en-GB";
regionalAndLanguageSettings.defaultRegionalFormat = defaultRegionalFormat;
RegionalFormatOverrides regionalFormatOverrides = new RegionalFormatOverrides();
regionalFormatOverrides.calendar = "Gregorian Calendar";
regionalFormatOverrides.firstDayOfWeek = "Sunday";
regionalFormatOverrides.shortDateFormat = "yyyy-MM-dd";
regionalFormatOverrides.longDateFormat = "dddd, MMMM d, yyyy";
regionalFormatOverrides.shortTimeFormat = "HH:mm";
regionalFormatOverrides.longTimeFormat = "h:mm:ss tt";
regionalFormatOverrides.timeZone = "Pacific Standard Time";
regionalAndLanguageSettings.regionalFormatOverrides = regionalFormatOverrides;

graphClient.me().settings().regionalAndLanguageSettings()
	.buildRequest()
	.put(regionalAndLanguageSettings);

```