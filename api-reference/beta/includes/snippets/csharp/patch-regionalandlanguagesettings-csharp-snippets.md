---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var regionalAndLanguageSettings = new RegionalAndLanguageSettings
{
	AuthoringLanguages = new List<LocaleInfo>()
	{
		new LocaleInfo
		{
			Locale = "en-US"
		},
		new LocaleInfo
		{
			Locale = "es-MX"
		}
	},
	DefaultRegionalFormat = new LocaleInfo
	{
		Locale = "en-US"
	}
};

await graphClient.Me.Settings.RegionalAndLanguageSettings
	.Request()
	.UpdateAsync(regionalAndLanguageSettings);

```