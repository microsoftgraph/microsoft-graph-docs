---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Teams["{teamId}"].Channels["{channelId}"]
	.CompleteMigration()
	.Request()
	.PostAsync();

```