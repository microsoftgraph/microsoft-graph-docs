---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentMultiple = await graphClient.RoleManagement.DeviceManagement.RoleAssignments["{unifiedRoleAssignmentMultiple-id}"]
	.Request()
	.GetAsync();

```