---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	Roles = new List<String>()
	{
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"}
	}
};

await graphClient.Teams["{id}"].Channels["{id}"].Members
	.Request()
	.AddAsync(conversationMember);

```