---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getEffectivePermissions = await graphClient.DeviceManagement.VirtualEndpoint
	.GetEffectivePermissions()
	.Request()
	.GetAsync();

```