---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managementIntent = await graphClient.TenantRelationships.ManagedTenants.ManagementIntents["{managedTenants.managementIntent-id}"]
	.Request()
	.GetAsync();

```