---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationThread = new ConversationThread
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.type","#Microsoft.OutlookServices.ConversationThread"}
	},
	IsLocked = true
};

await graphClient.Groups["{id}"].Threads["{id}"]
	.Request()
	.UpdateAsync(conversationThread);

```