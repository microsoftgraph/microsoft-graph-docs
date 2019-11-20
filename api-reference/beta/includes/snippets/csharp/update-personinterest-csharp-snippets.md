---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personInterest = new PersonInterest
{
	Categories = new List<String>()
	{
		"categories-value"
	},
	Description = "description-value",
	DisplayName = "displayName-value",
	WebUrl = "webUrl-value"
};

await graphClient.Me.Profile.Interests["{id}"]
	.Request()
	.UpdateAsync(personInterest);

```