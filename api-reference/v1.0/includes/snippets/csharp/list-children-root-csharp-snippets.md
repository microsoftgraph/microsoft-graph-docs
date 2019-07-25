---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Me.Drive.Root.Children
	.Request()
	.GetAsync();

```