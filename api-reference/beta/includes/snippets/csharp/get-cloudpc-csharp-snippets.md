---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPC = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{id}"]
	.Request()
	.GetAsync();

```