---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "comment-value";

await graphClient.Me.Messages["{message-id}"]
	.ReplyAll(null,comment)
	.Request()
	.PostAsync();

```