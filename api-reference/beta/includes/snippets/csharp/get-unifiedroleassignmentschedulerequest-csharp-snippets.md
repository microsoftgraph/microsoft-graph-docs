---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentScheduleRequest = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests["{unifiedRoleAssignmentScheduleRequest-id}"]
	.Request()
	.GetAsync();

```