---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrantConditionSet = new PermissionGrantConditionSet
{
	PermissionType = PermissionType.Delegated,
	ResourceApplication = "00000003-0000-0000-c000-000000000000"
};

await graphClient.Policies.PermissionGrantPolicies["my-custom-consent-policy"].Excludes
	.Request()
	.AddAsync(permissionGrantConditionSet);

```