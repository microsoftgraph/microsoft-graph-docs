---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSourceImages = await graphClient.DeviceManagement.VirtualEndpoint.DeviceImages
	.GetSourceImages()
	.Request()
	.GetAsync();

```