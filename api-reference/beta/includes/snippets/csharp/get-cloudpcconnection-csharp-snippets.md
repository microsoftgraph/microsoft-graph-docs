---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcConnection = await graphClient.TenantRelationships.ManagedTenants.CloudPcConnections["{managedTenants.cloudPcConnection-id}"]
	.Request()
	.GetAsync();

```