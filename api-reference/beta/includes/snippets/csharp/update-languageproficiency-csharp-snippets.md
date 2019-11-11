---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languageProficiency = new LanguageProficiency
{
	DisplayName = "displayName-value",
	Tag = "tag-value",
	Proficiency = LanguageProficiencyLevel.Elementary
};

await graphClient.Me.Profile.Languages["{id}"]
	.Request()
	.UpdateAsync(languageProficiency);

```