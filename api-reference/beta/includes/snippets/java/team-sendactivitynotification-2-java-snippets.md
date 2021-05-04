---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.ENTITY_URL;
topic.value = "https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}";

String activityType = "reservationUpdated";

ItemBody previewText = new ItemBody();
previewText.content = "You have moved up the queue";

AadUserNotificationRecipient recipient = new AadUserNotificationRecipient();
recipient.userId = "569363e2-4e49-4661-87f2-16f245c5d66a";

LinkedList<KeyValuePair> templateParametersList = new LinkedList<KeyValuePair>();
KeyValuePair templateParameters = new KeyValuePair();
templateParameters.name = "reservationId";
templateParameters.value = "TREEE433";

templateParametersList.add(templateParameters);
KeyValuePair templateParameters1 = new KeyValuePair();
templateParameters1.name = "currentSlot";
templateParameters1.value = "23";

templateParametersList.add(templateParameters1);

graphClient.teams("{teamId}")
	.sendActivityNotification(TeamSendActivityNotificationParameterSet
		.newBuilder()
		.withTopic(topic)
		.withActivityType(activityType)
		.withChainId(null)
		.withPreviewText(previewText)
		.withTemplateParameters(templateParametersList)
		.withRecipient(recipient)
		.build())
	.buildRequest()
	.post();

```