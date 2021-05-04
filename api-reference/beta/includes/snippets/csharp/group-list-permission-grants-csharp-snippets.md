---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrants = await graphClient.Groups["{group-id}"].PermissionGrants
	.Request()
	.GetAsync();

```