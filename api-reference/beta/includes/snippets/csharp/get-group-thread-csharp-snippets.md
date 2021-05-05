---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Request()
	.GetAsync();

```