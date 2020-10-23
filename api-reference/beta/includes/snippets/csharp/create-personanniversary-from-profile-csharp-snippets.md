---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnniversary = new PersonAnniversary
{
	Type = AnniversaryType.Birthday,
	Date = new Date(1980,1,8)
};

await graphClient.Me.Profile.Anniversaries
	.Request()
	.AddAsync(personAnniversary);

```