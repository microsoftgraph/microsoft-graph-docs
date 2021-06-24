---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignmentScheduleInstances = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleInstances
	.Request()
	.GetAsync();

```