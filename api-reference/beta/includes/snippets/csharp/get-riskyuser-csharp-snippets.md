---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUser = await graphClient.TenantRelationships.ManagedTenants.RiskyUsers["{managedTenants.riskyUser-id}"]
	.Request()
	.GetAsync();

```