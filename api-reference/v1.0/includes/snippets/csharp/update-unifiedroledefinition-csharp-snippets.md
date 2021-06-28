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
	}
};

await graphClient.RoleManagement.Directory.RoleDefinitions["0d55728d-3e24-4309-9b1b-5ac09921475a"]
	.Request()
	.UpdateAsync(unifiedRoleDefinition);

```