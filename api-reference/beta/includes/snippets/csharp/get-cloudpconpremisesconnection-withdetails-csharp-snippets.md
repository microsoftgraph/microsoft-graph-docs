---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPcOnPremisesConnection = await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections["{id}"]
	.Request()
	.Select("id,displayName,healthCheckStatus,healthCheckStatusDetails,inUse")
	.GetAsync();

```