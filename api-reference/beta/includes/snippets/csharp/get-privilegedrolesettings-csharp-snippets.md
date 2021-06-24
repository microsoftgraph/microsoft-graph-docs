---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleSettings = await graphClient.PrivilegedRoles["{privilegedRole-id}"].Settings
	.Request()
	.GetAsync();

```