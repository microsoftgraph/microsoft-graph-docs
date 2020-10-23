---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackages = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages
	.Request()
	.GetAsync();

```