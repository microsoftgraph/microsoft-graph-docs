---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var entitlementManagementSettings = await graphClient.IdentityGovernance.EntitlementManagement.Settings
	.Request()
	.GetAsync();

```