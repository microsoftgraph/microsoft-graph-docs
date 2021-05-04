---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members["{conversationMember-id}"]
	.Request()
	.GetAsync();

```