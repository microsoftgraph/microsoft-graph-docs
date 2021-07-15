---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
};

var activityType = "taskCreated";

var previewText = new ItemBody
{
	Content = "New Task Created"
};

var recipient = new ChatMembersNotificationRecipient
{
	ChatId = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2"
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