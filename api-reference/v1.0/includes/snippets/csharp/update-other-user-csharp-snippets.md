---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	BusinessPhones = new List<String>()
	{
		"+1 425 555 0109"
	},
	OfficeLocation = "18/2111"
};

await graphClient.Users["{id}"]
	.Request()
	.UpdateAsync(user);

```