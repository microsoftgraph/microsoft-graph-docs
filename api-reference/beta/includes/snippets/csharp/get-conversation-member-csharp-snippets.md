---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = await graphClient.Chats["19:cf66807577b149cca1b7af0c32eec122@thread.v2"].Members["141c574c-dd90-4131-b173-baf4bb0e894e"]
	.Request()
	.GetAsync();

```