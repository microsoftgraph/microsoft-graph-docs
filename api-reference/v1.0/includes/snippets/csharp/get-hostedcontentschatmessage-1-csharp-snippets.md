---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var hostedContents = await graphClient.Chats["{chat-id}"].Messages["{chatMessage-id}"].HostedContents
	.Request()
	.GetAsync();

```