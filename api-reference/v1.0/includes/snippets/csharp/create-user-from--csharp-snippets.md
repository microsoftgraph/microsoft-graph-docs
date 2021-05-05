---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/v1.0/users/{userId}"}
	}
};

await graphClient.Print.Shares["{printerShare-id}"].AllowedUsers.References
	.Request()
	.AddAsync(user);

```