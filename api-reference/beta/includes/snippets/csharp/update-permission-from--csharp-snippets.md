---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permission = new Permission
{
	Roles = new List<String>()
	{
		"read"
	}
};

await graphClient.Sites["{site-id}"].Permissions["{permission-id}"]
	.Request()
	.UpdateAsync(permission);

```