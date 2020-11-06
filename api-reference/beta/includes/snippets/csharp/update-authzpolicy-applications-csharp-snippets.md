---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authorizationPolicy = new AuthorizationPolicy
{
	DefaultUserRolePermissions = new DefaultUserRolePermissions
	{
		AllowedToCreateApps = false
	}
};

await graphClient.Policies.AuthorizationPolicy["authorizationPolicy"]
	.Request()
	.UpdateAsync(authorizationPolicy);

```