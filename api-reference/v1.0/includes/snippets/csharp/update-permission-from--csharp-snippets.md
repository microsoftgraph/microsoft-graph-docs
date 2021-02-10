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

await graphClient.Sites["{sitesId}"].Permissions["{permissionId}"]
	.Request()
	.UpdateAsync(permission);

```