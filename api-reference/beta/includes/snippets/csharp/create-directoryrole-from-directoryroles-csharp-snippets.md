---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRole = new DirectoryRole
{
	Description = "description-value",
	DisplayName = "displayName-value",
	RoleTemplateId = "roleTemplateId-value"
};

await graphClient.DirectoryRoles
	.Request()
	.AddAsync(directoryRole);

```