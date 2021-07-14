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

var recipient = new TeamMembersNotificationRecipient
{
	TeamId = "e8bece96-d393-4b9b-b8da-69cedef1a7e7"
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