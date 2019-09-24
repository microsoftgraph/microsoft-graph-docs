---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleAssignments = await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.Filter("principalId eq 'a98eb769-7bd4-4489-86f6-ad96e1d58b62'")
	.GetAsync();

```