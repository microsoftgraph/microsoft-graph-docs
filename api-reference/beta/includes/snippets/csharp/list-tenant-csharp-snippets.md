---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenants = await graphClient.TenantRelationships.ManagedTenants.Tenants
	.Request()
	.GetAsync();

```