---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managedDeviceCompliance = await graphClient.TenantRelationships.ManagedTenants.ManagedDeviceCompliances["{managedTenants.managedDeviceCompliance-id}"]
	.Request()
	.GetAsync();

```