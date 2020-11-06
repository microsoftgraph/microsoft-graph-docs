---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.PermissionGrantPolicies["my-custom-consent-policy"].Includes["198d8d6b-ecf6-47bc-a3dd-eaa2fe0544c5"]
	.Request()
	.DeleteAsync();

```