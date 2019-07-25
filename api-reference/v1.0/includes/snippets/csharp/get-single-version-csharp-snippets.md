---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItemVersion = await graphClient.Me.Drive.Items["{item-id}"].Versions["{version-id}"]
	.Request()
	.GetAsync();

```