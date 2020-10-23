---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = new Team();
TeamMemberSettings memberSettings = new TeamMemberSettings();
memberSettings.allowCreatePrivateChannels = true;
memberSettings.allowCreateUpdateChannels = true;
team.memberSettings = memberSettings;
TeamMessagingSettings messagingSettings = new TeamMessagingSettings();
messagingSettings.allowUserEditMessages = true;
messagingSettings.allowUserDeleteMessages = true;
team.messagingSettings = messagingSettings;
TeamFunSettings funSettings = new TeamFunSettings();
funSettings.allowGiphy = true;
funSettings.giphyContentRating = GiphyRatingType.STRICT;
team.funSettings = funSettings;

graphClient.groups("{id}").team()
	.buildRequest()
	.put(team);

```