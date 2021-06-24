---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = new DirectoryRole
{
	RoleTemplateId = "fe930be7-5e62-47db-91af-98c3a49a38b1"
};

await graphClient.DirectoryRoles
	.Request()
	.AddAsync(directoryRole);

```