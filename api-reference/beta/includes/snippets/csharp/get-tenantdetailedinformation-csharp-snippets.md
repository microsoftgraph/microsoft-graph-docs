---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantDetailedInformation = await graphClient.TenantRelationships.ManagedTenants.TenantsDetailedInformation["{managedTenants.tenantDetailedInformation-id}"]
	.Request()
	.GetAsync();

```