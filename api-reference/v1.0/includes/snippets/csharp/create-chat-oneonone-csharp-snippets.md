---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chat = new Chat
{
	ChatType = ChatType.OneOnOne,
	Members = new ChatMembersCollectionPage()
	{
		new AadUserConversationMember
		{
			Roles = new List<String>()
			{
				"owner"
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"user@odata.bind", "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"}
			}
		},
		new AadUserConversationMember
		{
			Roles = new List<String>()
			{
				"owner"
			},
			AdditionalData = new Dictionary<string, object>()
			{
				{"user@odata.bind", "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')"}
			}
		}
	}
};

await graphClient.Chats
	.Request()
	.AddAsync(chat);

```