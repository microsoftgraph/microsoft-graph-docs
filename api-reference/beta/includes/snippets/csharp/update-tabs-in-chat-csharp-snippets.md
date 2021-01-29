---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsTab = new TeamsTab
{
	DisplayName = "My Contoso Tab - updated again"
};

await graphClient.Chats["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2"].Tabs["794f0e4e-4d10-4bb5-9079-3a465a629eff"]
	.Request()
	.UpdateAsync(teamsTab);

```