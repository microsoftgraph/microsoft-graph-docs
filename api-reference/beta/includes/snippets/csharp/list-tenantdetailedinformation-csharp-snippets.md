---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantsDetailedInformation = await graphClient.TenantRelationships.ManagedTenants.TenantsDetailedInformation
	.Request()
	.GetAsync();

```