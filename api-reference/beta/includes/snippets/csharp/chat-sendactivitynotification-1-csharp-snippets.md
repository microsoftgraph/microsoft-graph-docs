---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/chats/{chatId}"
};

var activityType = "taskCreated";

var previewText = new ItemBody
{
	Content = "New Task Created"
};

var recipient = new AadUserNotificationRecipient
{
	UserId = "569363e2-4e49-4661-87f2-16f245c5d66a"
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "taskId",
		Value = "Task 12322"
	}
};

await graphClient.Chats["{chat-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,templateParameters,recipient)
	.Request()
	.PostAsync();

```