---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Request()
	.DeleteAsync();

```