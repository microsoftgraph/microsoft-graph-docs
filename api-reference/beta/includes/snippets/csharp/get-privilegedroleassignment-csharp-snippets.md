---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignment = await graphClient.PrivilegedRoleAssignments["{privilegedRoleAssignment-id}"]
	.Request()
	.GetAsync();

```