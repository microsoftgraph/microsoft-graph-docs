---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = await graphClient.Drive.Bundles["{driveItem-id}"]
	.Request()
	.GetAsync();

```