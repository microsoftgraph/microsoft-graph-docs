---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personName = new PersonName
{
	DisplayName = "Innocenty Popov",
	First = "Innocenty",
	Initials = "IP",
	Last = "Popov",
	LanguageTag = "en-US",
	Maiden = null
};

await graphClient.Me.Profile.Names
	.Request()
	.AddAsync(personName);

```