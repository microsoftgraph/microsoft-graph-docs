---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenant = await graphClient.TenantRelationships.ManagedTenants.Tenants["{managedTenants.tenant-id}"]
	.Request()
	.GetAsync();

```