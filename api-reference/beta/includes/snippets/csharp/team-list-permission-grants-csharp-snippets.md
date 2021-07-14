---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrants = await graphClient.Teams["{team-id}"].PermissionGrants
	.Request()
	.GetAsync();

```