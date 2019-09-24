---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chatMessageHostedContent = await graphClient.Chats["{id}"].Messages["{id}"].HostedContents["{id}"]
	.Request()
	.GetAsync();

```