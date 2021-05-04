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
		{"user@odata.bind", "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"}
	}
};

await graphClient.Chats["{chat-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```