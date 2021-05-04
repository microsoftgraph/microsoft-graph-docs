---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var device = await graphClient.Devices["{device-id}"]
	.Request()
	.GetAsync();

```