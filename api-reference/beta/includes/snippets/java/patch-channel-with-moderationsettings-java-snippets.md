---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Channel channel = new Channel();
channel.displayName = "UpdateChannelModeration";
channel.description = "Update channel moderation.";
ChannelModerationSettings moderationSettings = new ChannelModerationSettings();
moderationSettings.userNewMessageRestriction = UserNewMessageRestriction.MODERATORS;
moderationSettings.replyRestriction = ReplyRestriction.EVERYONE;
moderationSettings.allowNewMessageFromBots = true;
moderationSettings.allowNewMessageFromConnectors = true;
channel.moderationSettings = moderationSettings;

graphClient.teams("893075dd-2487-4122-925f-022c42e20265").channels("19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2")
	.buildRequest()
	.patch(channel);

```