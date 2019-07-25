---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var {size} = await graphClient.Me.Drive.Items["{item-id}"].Thumbnails["{thumb-id}"].{size}
	.Request()
	.GetAsync();

```