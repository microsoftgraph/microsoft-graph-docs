---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/v1.0/groups/{groupId}"}
	}
};

await graphClient.Print.Shares["{printerShare-id}"].AllowedGroups.References
	.Request()
	.AddAsync(group);

```