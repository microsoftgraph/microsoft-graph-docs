---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mobileAppManagementPolicies = await graphClient.Policies.MobileAppManagementPolicies
	.Request()
	.GetAsync();

```