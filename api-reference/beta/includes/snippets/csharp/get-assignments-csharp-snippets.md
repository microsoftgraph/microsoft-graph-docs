---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignments = await graphClient.PrivilegedRoles["{privilegedRole-id}"].Assignments
	.Request()
	.GetAsync();

```