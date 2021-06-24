---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleDefinition = await graphClient.RoleManagement.CloudPC.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.Request()
	.GetAsync();

```