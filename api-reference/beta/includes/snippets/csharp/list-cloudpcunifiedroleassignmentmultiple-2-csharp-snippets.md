---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.CloudPC.RoleAssignments
	.Request()
	.Filter("roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'")
	.GetAsync();

```