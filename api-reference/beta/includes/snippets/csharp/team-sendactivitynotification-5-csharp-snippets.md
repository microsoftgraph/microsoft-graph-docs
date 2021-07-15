---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/teams/e8bece96-d393-4b9b-b8da-69cedef1a7e7"
};

var activityType = "pendingFinanceApprovalRequests";

var previewText = new ItemBody
{
	Content = "Internal spending team has a pending finance approval requests"
};

var recipient = new ChannelMembersNotificationRecipient
{
	TeamId = "e8bece96-d393-4b9b-b8da-69cedef1a7e7",
	ChannelId = "19:3d61a2309f094f4a9310b20f1db37520@thread.tacv2"
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