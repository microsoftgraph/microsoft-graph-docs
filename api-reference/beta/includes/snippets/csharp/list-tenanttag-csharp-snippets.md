---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantTags = await graphClient.TenantRelationships.ManagedTenants.TenantTags
	.Request()
	.GetAsync();

```