---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = new DirectoryRole
{
	RoleTemplateId = "roleTemplateId-value"
};

await graphClient.DirectoryRoles
	.Request()
	.AddAsync(directoryRole);

```