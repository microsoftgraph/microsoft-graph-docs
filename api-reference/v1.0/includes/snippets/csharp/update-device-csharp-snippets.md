---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = new Device
{
	AccountEnabled = false
};

await graphClient.Devices["{device-id}"]
	.Request()
	.UpdateAsync(device);

```