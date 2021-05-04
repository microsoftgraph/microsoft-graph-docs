---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackage = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"]
	.Request()
	.GetAsync();

```