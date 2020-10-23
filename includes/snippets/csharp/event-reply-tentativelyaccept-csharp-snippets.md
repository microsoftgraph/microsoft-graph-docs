---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "I will probably be able to make it.";

var sendResponse = true;

await graphClient.Me.Events["AAMkADADVj3fyAABZ5ieyAAA="]
	.TentativelyAccept(comment,sendResponse)
	.Request()
	.PostAsync();

```