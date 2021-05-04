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

await graphClient.Me.Drive.Items["{driveItem-id}"].Permissions["{permission-id}"]
	.Request()
	.UpdateAsync(permission);

```