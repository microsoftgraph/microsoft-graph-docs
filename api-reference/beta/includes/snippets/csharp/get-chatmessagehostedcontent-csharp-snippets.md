---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Chats["{id}"].Messages["{id}"].HostedContents["{id}"].Content
	.Request()
	.GetAsync();

```