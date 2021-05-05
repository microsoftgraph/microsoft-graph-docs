---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	Roles = new List<String>()
	{
		"owner"
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members["{conversationMember-id}"]
	.Request()
	.UpdateAsync(conversationMember);

```