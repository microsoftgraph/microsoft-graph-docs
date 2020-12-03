---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authorizationPolicy = new AuthorizationPolicy
{
	EnabledPreviewFeatures = new List<String>()
	{
		"assignGroupsToRoles"
	}
};

await graphClient.Policies.AuthorizationPolicy["authorizationPolicy"]
	.Request()
	.UpdateAsync(authorizationPolicy);

```