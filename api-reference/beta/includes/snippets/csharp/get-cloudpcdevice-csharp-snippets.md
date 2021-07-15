---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcDevice = await graphClient.TenantRelationships.ManagedTenants.CloudPcDevices["{managedTenants.cloudPcDevice-id}"]
	.Request()
	.GetAsync();

```