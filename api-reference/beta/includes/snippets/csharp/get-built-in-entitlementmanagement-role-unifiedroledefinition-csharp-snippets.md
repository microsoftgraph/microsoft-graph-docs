---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleDefinition = await graphClient.RoleManagement.EntitlementManagement.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.Request()
	.GetAsync();

```