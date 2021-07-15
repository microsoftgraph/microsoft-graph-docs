---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mobilityManagementPolicy = await graphClient.Policies.MobileAppManagementPolicies["{mobilityManagementPolicy-id}"]
	.Request()
	.GetAsync();

```