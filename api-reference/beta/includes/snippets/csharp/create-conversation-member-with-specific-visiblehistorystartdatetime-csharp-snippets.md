---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	VisibleHistoryStartDateTime = DateTimeOffset.Parse("2019-04-18T23:51:43.255Z"),
	AdditionalData = new Dictionary<string, object>()
	{
		{"user@odata.bind", "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"}
	}
};

await graphClient.Chats["{chat-id}"].Members
	.Request()
	.AddAsync(conversationMember);

```