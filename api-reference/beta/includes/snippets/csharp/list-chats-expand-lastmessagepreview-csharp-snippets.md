---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chats = await graphClient.Chats
	.Request()
	.Expand("lastMessagePreview")
	.GetAsync();

```