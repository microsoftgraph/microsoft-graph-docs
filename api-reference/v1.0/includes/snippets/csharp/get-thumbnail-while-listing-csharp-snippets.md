---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Me.Drive.Items["{item-id}"].Children
	.Request()
	.Expand("thumbnails")
	.GetAsync();

```