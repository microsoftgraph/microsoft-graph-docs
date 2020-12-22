---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	DisplayName = "UpdateChannelModeration",
	Description = "Update channel moderation.",
	ModerationSettings = new ChannelModerationSettings
	{
		UserNewMessageRestriction = UserNewMessageRestriction.Moderators,
		ReplyRestriction = ReplyRestriction.Everyone,
		AllowNewMessageFromBots = true,
		AllowNewMessageFromConnectors = true
	}
};

await graphClient.Teams["{team-id}"].Channels["{channel-id}"]
	.Request()
	.UpdateAsync(channel);

```