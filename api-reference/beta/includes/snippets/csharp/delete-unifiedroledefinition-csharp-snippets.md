---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.RoleManagement.Directory.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.Request()
	.DeleteAsync();

```