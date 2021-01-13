---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var deviceImages = await graphClient.DeviceManagement.VirtualEndpoint.DeviceImages
	.Request()
	.GetAsync();

```