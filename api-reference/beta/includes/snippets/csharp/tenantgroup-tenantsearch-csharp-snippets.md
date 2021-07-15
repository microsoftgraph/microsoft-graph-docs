---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantId = "String";

await graphClient.TenantRelationships.ManagedTenants.TenantGroups
	.TenantSearch(tenantId)
	.Request()
	.PostAsync();

```