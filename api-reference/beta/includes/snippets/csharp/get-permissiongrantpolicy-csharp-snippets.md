---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrantPolicy = await graphClient.Policies.PermissionGrantPolicies["microsoft-user-default-low"]
	.Request()
	.GetAsync();

```