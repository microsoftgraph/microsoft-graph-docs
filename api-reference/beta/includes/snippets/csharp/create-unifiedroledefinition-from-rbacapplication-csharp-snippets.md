---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleDefinition = new UnifiedRoleDefinition
{
	Description = "Update basic properties of application registrations",
	DisplayName = "Application Registration Support Administrator",
	RolePermissions = new List<UnifiedRolePermission>()
	{
		new UnifiedRolePermission
		{
			AllowedResourceActions = new List<String>()
			{
				"microsoft.directory/applications/basic/read"
			}
		}
	},
	IsEnabled = true
};

await graphClient.RoleManagement.Directory.RoleDefinitions
	.Request()
	.AddAsync(unifiedRoleDefinition);

```