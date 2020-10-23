---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var message = await graphClient.Me.Messages["AAMkADADVj3fyAABZ5hYdAAA="]
	.Request()
	.Expand("eventMessage/event")
	.GetAsync();

```