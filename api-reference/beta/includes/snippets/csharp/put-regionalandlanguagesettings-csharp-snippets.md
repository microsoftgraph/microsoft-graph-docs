---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var regionalAndLanguageSettings = new RegionalAndLanguageSettings
{
	DefaultDisplayLanguage = new LocaleInfo
	{
		Locale = "en-US"
	},
	AuthoringLanguages = new List<LocaleInfo>()
	{
		new LocaleInfo
		{
			Locale = "fr-FR"
		},
		new LocaleInfo
		{
			Locale = "de-DE"
		}
	},
	DefaultTranslationLanguage = new LocaleInfo
	{
		Locale = "en-US"
	},
	DefaultSpeechInputLanguage = new LocaleInfo
	{
		Locale = "en-US"
	},
	DefaultRegionalFormat = new LocaleInfo
	{
		Locale = "en-GB"
	},
	RegionalFormatOverrides = new RegionalFormatOverrides
	{
		Calendar = "Gregorian Calendar",
		FirstDayOfWeek = "Sunday",
		ShortDateFormat = "yyyy-MM-dd",
		LongDateFormat = "dddd, MMMM d, yyyy",
		ShortTimeFormat = "HH:mm",
		LongTimeFormat = "h:mm:ss tt",
		TimeZone = "Pacific Standard Time"
	}
};

await graphClient.Me.Settings.RegionalAndLanguageSettings
	.Request()
	.PutAsync(regionalAndLanguageSettings);

```