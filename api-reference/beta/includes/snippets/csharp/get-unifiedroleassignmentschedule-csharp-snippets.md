---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentSchedule = await graphClient.RoleManagement.Directory.RoleAssignmentSchedules["{unifiedRoleAssignmentSchedule-id}"]
	.Request()
	.GetAsync();

```