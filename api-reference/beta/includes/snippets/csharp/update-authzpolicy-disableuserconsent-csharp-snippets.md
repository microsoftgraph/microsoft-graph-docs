---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authorizationPolicy = new AuthorizationPolicy
{
	PermissionGrantPolicyIdsAssignedToDefaultUserRole = new List<String>()
	{
	}
};

await graphClient.Policies.AuthorizationPolicy["{authorizationPolicy-id}"]
	.Request()
	.UpdateAsync(authorizationPolicy);

```