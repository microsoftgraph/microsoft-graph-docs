---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messages = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages
	.Request()
	.GetAsync();

```