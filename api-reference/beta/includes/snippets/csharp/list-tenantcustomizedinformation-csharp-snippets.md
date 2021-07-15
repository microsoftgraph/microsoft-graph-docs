---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantsCustomizedInformation = await graphClient.TenantRelationships.ManagedTenants.TenantsCustomizedInformation
	.Request()
	.GetAsync();

```