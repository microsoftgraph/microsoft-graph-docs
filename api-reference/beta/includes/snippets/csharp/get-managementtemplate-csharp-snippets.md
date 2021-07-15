---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managementTemplate = await graphClient.TenantRelationships.ManagedTenants.ManagementTemplates["{managedTenants.managementTemplate-id}"]
	.Request()
	.GetAsync();

```