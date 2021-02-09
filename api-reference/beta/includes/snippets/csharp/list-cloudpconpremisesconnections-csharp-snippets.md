---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesConnections = await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections
	.Request()
	.GetAsync();

```