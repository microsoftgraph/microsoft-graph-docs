---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var managementActionTenantDeploymentStatuses = await graphClient.TenantRelationships.ManagedTenants.ManagementActionTenantDeploymentStatuses
	.Request()
	.GetAsync();

```