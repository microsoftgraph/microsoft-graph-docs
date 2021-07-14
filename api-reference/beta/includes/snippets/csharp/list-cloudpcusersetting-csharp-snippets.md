---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userSettings = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings
	.Request()
	.GetAsync();

```