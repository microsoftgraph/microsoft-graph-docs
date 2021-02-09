---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.PermissionGrantPolicies["my-custom-consent-policy"].Excludes["6a846635-3e70-4a10-821e-512a0db93cbd"]
	.Request()
	.DeleteAsync();

```