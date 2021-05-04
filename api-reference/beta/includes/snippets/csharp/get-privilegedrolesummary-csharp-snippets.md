---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleSummary = await graphClient.PrivilegedRoles["{privilegedRole-id}"].Summary
	.Request()
	.GetAsync();

```