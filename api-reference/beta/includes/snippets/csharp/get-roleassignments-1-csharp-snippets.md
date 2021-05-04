---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.Filter("roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'")
	.Expand("principal")
	.GetAsync();

```