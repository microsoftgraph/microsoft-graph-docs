---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcConnections = await graphClient.TenantRelationships.ManagedTenants.CloudPcConnections
	.Request()
	.GetAsync();

```