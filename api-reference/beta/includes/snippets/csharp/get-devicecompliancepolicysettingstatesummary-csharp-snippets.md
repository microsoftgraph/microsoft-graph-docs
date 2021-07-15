---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var response = await graphClient.TenantRelationships.ManagedTenants.DeviceCompliancePolicySettingStateSummarys["{UNKNOWN-id}"]
	.Request()
	.GetAsync();

```