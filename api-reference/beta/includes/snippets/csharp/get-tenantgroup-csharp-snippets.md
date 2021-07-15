---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantGroup = await graphClient.TenantRelationships.ManagedTenants.TenantGroups["{managedTenants.tenantGroup-id}"]
	.Request()
	.GetAsync();

```