---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	VisibleHistoryStartDateTime = DateTimeOffset.Parse("0001-01-01T00:00:00Z"),
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"}
	}
};

await graphClient.Chats["19:cf66807577b149cca1b7af0c32eec122@thread.v2"].Members
	.Request()
	.AddAsync(conversationMember);

```