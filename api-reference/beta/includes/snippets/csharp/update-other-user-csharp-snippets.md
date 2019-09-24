---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	BusinessPhones = new List<String>()
	{
		"businessPhones-value"
	},
	OfficeLocation = "city-value"
};

await graphClient.Users["{id}"]
	.Request()
	.UpdateAsync(user);

```