---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = await graphClient.Chats["{chat-id}"].Members["{conversationMember-id}"]
	.Request()
	.GetAsync();

```