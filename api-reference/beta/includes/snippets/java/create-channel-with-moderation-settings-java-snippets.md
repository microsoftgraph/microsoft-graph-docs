---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Channel channel = new Channel();
channel.displayName = "TestChannelModeration";
channel.description = "Test channel moderation.";
channel.membershipType = ChannelMembershipType.STANDARD;
ChannelModerationSettings moderationSettings = new ChannelModerationSettings();
moderationSettings.userNewMessageRestriction = UserNewMessageRestriction.EVERYONE_EXCEPT_GUESTS;
moderationSettings.replyRestriction = ReplyRestriction.EVERYONE;
moderationSettings.allowNewMessageFromBots = true;
moderationSettings.allowNewMessageFromConnectors = true;
channel.moderationSettings = moderationSettings;

graphClient.teams("57fb72d0-d811-46f4-8947-305e6072eaa5").channels()
	.buildRequest()
	.post(channel);

```