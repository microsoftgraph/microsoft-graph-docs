---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnniversary = new PersonAnniversary
{
	Type = AnniversaryType.Birthday,
	Date = new Date(1900,1,1)
};

await graphClient.Me.Profile.Anniversaries["{id}"]
	.Request()
	.UpdateAsync(personAnniversary);

```