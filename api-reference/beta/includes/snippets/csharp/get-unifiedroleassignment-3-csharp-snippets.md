---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentMultiple = await graphClient.RoleManagement.CloudPC.RoleAssignments["{unifiedRoleAssignmentMultiple-id}"]
	.Request()
	.Expand("roleDefinition")
	.GetAsync();

```