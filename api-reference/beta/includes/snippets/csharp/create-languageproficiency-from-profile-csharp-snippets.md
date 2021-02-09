---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languageProficiency = new LanguageProficiency
{
	DisplayName = "Norwegian Bokmål",
	Tag = "nb-NO",
	Spoken = LanguageProficiencyLevel.NativeOrBilingual,
	Written = LanguageProficiencyLevel.NativeOrBilingual,
	Reading = LanguageProficiencyLevel.NativeOrBilingual
};

await graphClient.Me.Profile.Languages
	.Request()
	.AddAsync(languageProficiency);

```