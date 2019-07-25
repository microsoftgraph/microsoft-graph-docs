---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.PrivilegedAccess["azureResources"].RoleAssignmentRequests["7c53453e-d5a4-41e0-8eb1-32d5ec8bfdee"]
	.Cancel()
	.Request()
	.PostAsync();

```