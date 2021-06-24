---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignmentSchedules = await graphClient.RoleManagement.Directory.RoleAssignmentSchedules
	.Request()
	.GetAsync();

```