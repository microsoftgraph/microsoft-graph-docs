---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantGroups = await graphClient.TenantRelationships.ManagedTenants.TenantGroups
	.Request()
	.GetAsync();

```