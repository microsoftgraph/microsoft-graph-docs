---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	IsLocked = true
};

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"]
	.Request()
	.UpdateAsync(conversationThread);

```