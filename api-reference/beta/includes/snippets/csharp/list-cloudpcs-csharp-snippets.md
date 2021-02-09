---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var cloudPCs = await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs
	.Request()
	.GetAsync();

```