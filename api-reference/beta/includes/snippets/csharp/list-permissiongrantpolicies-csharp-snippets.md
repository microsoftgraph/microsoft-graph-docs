---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permissionGrantPolicies = await graphClient.Policies.PermissionGrantPolicies
	.Request()
	.GetAsync();

```