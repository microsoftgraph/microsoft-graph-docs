---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	BusinessPhones = new List<String>()
	{
		"businessPhones-value"
	},
	City = "city-value"
};

await graphClient.Me
	.Request()
	.UpdateAsync(user);

```