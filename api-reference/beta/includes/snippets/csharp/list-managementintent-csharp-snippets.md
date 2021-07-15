---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managementIntents = await graphClient.TenantRelationships.ManagedTenants.ManagementIntents
	.Request()
	.GetAsync();

```