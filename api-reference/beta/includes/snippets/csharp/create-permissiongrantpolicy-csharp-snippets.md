---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrantPolicy = new PermissionGrantPolicy
{
	Id = "my-custom-consent-policy",
	DisplayName = "Custom application consent policy",
	Description = "A custom permission grant policy to customize conditions for granting consent."
};

await graphClient.Policies.PermissionGrantPolicies
	.Request()
	.AddAsync(permissionGrantPolicy);

```