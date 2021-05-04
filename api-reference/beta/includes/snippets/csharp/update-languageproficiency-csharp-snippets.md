---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languageProficiency = new LanguageProficiency
{
	AllowedAudiences = AllowedAudiences.Organization
};

await graphClient.Me.Profile.Languages["{languageProficiency-id}"]
	.Request()
	.UpdateAsync(languageProficiency);

```