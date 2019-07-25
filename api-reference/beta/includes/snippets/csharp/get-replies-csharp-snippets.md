---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var replies = await graphClient.Chats["{id}"].Messages["{id}"].Replies
	.Request()
	.GetAsync();

```