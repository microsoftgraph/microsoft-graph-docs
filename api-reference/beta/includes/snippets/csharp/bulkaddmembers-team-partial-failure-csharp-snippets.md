---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var values = new List<ConversationMember>()
{
	new AadUserConversationMember
	{
		Roles = new List<String>()
		{
		},
		AdditionalData = new Dictionary<string, object>()
		{
			{"user@odata.bind", "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')"}
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
			{"user@odata.bind", "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"}
		}
	}
};

await graphClient.Teams["{team-id}"].Members
	.Add(values)
	.Request()
	.PostAsync();

```