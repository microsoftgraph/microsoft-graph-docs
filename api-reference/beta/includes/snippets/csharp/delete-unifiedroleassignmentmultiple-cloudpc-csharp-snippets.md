---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.RoleManagement.CloudPC.RoleAssignments["{unifiedRoleAssignmentMultiple-id}"]
	.Request()
	.DeleteAsync();

```