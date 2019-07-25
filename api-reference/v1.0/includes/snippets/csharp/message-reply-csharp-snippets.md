---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "comment-value";

await graphClient.Me.Messages["{id}"]
	.Reply(comment)
	.Request()
	.PostAsync();

```