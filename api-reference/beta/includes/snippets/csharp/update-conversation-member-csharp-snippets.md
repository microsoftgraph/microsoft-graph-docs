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

await graphClient.Teams["{id}"].Channels["{id}"].Members["{id}"]
	.Request()
	.UpdateAsync(conversationMember);

```