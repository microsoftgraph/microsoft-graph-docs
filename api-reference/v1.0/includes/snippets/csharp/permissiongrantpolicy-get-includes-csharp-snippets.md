---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var includes = await graphClient.Policies.PermissionGrantPolicies["{permissionGrantPolicy-id}"].Includes
	.Request()
	.GetAsync();

```