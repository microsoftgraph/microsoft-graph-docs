---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/teams/{teamId}"
};

var activityType = "pendingFinanceApprovalRequests";

var previewText = new ItemBody
{
	Content = "Internal spending team has a pending finance approval requests"
};

var recipient = new AadUserNotificationRecipient
{
	UserId = "569363e2-4e49-4661-87f2-16f245c5d66a"
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "pendingRequestCount",
		Value = "5"
	}
};

await graphClient.Teams["{team-id}"]
	.SendActivityNotification(topic,activityType,null,previewText,templateParameters,recipient)
	.Request()
	.PostAsync();

```