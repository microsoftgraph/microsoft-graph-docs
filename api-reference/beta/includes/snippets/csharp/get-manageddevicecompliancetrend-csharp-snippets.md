---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managedDeviceComplianceTrend = await graphClient.TenantRelationships.ManagedTenants.ManagedDeviceComplianceTrends["{managedTenants.managedDeviceComplianceTrend-id}"]
	.Request()
	.GetAsync();

```