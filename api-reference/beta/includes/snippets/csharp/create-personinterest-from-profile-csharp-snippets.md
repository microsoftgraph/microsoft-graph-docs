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
	},
	Description = "World's greatest football club",
	DisplayName = "Chelsea FC",
	WebUrl = "https://www.chelseafc.com"
};

await graphClient.Me.Profile.Interests
	.Request()
	.AddAsync(personInterest);

```