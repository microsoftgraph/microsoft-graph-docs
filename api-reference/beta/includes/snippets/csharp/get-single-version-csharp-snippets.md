---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItemVersion = await graphClient.Me.Drive.Items["{driveItem-id}"].Versions["{driveItemVersion-id}"]
	.Request()
	.GetAsync();

```