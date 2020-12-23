---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	DisplayName = "TestChannelModeration",
	Description = "Test channel moderation.",
	MembershipType = ChannelMembershipType.Standard,
	ModerationSettings = new ChannelModerationSettings
	{
		UserNewMessageRestriction = UserNewMessageRestriction.EveryoneExceptGuests,
		ReplyRestriction = ReplyRestriction.Everyone,
		AllowNewMessageFromBots = true,
		AllowNewMessageFromConnectors = true
	}
};

await graphClient.Teams["57fb72d0-d811-46f4-8947-305e6072eaa5"].Channels
	.Request()
	.AddAsync(channel);

```