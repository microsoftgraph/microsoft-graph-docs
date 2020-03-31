---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personName = new PersonName
{
	DisplayName = "displayName-value",
	First = "first-value",
	Initials = "initials-value",
	Last = "last-value",
	LanguageTag = "languageTag-value",
	Maiden = "maiden-value"
};

await graphClient.Me.Profile.Names
	.Request()
	.AddAsync(personName);

```