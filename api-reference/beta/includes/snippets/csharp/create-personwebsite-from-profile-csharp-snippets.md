---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personWebsite = new PersonWebsite
{
	Categories = new List<String>()
	{
		"categories-value"
	},
	Description = "description-value",
	DisplayName = "displayName-value",
	WebUrl = "webUrl-value"
};

await graphClient.Me.Profile.Websites
	.Request()
	.AddAsync(personWebsite);

```