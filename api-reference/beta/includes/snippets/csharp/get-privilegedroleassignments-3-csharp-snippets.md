---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignments = await graphClient.PrivilegedRoleAssignments
	.Request()
	.Filter("isElevated eq true and expirationDateTime eq null")
	.GetAsync();

```