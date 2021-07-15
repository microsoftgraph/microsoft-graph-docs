---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantTag = new Microsoft.Graph.ManagedTenants.TenantTag
{
	DisplayName = "Support",
	Description = "Tenants that have purchased extended support"
};

await graphClient.TenantRelationships.ManagedTenants.TenantTags
	.Request()
	.AddAsync(tenantTag);

```