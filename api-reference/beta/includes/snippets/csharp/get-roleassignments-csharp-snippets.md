---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.Filter(" principalId eq 'f1847572-48aa-47aa-96a3-2ec61904f41f'")
	.GetAsync();

```