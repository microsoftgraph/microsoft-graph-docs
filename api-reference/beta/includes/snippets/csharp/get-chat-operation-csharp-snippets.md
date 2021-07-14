---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAsyncOperation = await graphClient.Chats["{chat-id}"].Operations["{teamsAsyncOperation-id}"]
	.Request()
	.GetAsync();

```