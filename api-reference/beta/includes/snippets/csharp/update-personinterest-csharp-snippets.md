---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personInterest = new PersonInterest
{
	Categories = new List<String>()
	{
		"Sports"
	}
};

await graphClient.Me.Profile.Interests["{id}"]
	.Request()
	.UpdateAsync(personInterest);

```