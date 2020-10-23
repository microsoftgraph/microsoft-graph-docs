---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	MemberSettings = new TeamMemberSettings
	{
		AllowCreatePrivateChannels = true,
		AllowCreateUpdateChannels = true
	},
	MessagingSettings = new TeamMessagingSettings
	{
		AllowUserEditMessages = true,
		AllowUserDeleteMessages = true
	},
	FunSettings = new TeamFunSettings
	{
		AllowGiphy = true,
		GiphyContentRating = GiphyRatingType.Strict
	}
};

await graphClient.Groups["{id}"].Team
	.Request()
	.PutAsync(team);

```