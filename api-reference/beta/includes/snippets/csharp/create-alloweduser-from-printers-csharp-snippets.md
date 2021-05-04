---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/users/{id}"}
	}
};

await graphClient.Print.Shares["{printerShare-id}"].AllowedUsers.References
	.Request()
	.AddAsync(user);

```