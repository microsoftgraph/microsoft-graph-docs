---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.MobileDeviceManagementPolicies["{mobilityManagementPolicy-id}"]
	.Request()
	.DeleteAsync();

```