---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOverview = await graphClient.TenantRelationships.ManagedTenants.CloudPcsOverview["{managedTenants.cloudPcOverview-id}"]
	.Request()
	.GetAsync();

```