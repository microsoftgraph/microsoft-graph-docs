---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Me.Drive.Items["{driveItem-id}"].Versions["{driveItemVersion-id}"].Content
	.Request()
	.GetAsync();

```