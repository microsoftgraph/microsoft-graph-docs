---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Posts["{post-id}"].Extensions["{extension-id}"]
	.Request()
	.GetAsync();

```