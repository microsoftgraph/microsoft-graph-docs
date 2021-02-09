---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personWebsite = new PersonWebsite
{
	Categories = new List<String>()
	{
		"football"
	},
	DisplayName = "Lyn Damer",
	WebUrl = "www.lyndamer.no"
};

await graphClient.Me.Profile.Websites
	.Request()
	.AddAsync(personWebsite);

```