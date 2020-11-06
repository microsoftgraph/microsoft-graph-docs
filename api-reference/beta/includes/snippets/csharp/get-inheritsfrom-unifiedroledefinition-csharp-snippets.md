---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleDefinition = await graphClient.RoleManagement.Directory.RoleDefinitions["fdd7a751-b60b-444a-984c-02652fe8fa1c"]
	.Request()
	.Expand("inheritsPermissionsFrom")
	.GetAsync();

```