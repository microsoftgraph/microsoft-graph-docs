---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comment = "comment-value";

var sendResponse = true;

await graphClient.Me.Events["{id}"]
	.Decline(comment,sendResponse)
	.Request()
	.PostAsync();

```