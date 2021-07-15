---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var windowsProtectionState = await graphClient.TenantRelationships.ManagedTenants.WindowsProtectionStates["{managedTenants.windowsProtectionState-id}"]
	.Request()
	.GetAsync();

```