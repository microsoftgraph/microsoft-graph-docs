---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}"
};

var activityType = "taskCreated";

var previewText = new ItemBody
{
	Content = "New Task Created"
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "taskId",
		Value = "Task 12322"
	}
};

await graphClient.Users["{userId}"].Teamwork
	.SendActivityNotification(topic,activityType,null,previewText,templateParameters)
	.Request()
	.PostAsync();

```