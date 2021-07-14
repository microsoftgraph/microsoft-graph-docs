---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.ENTITY_URL;
topic.value = "https://graph.microsoft.com/beta/chats/19:1c3af46e9e0f4a5293343c8813c47619@thread.v2";

String activityType = "taskCreated";

ItemBody previewText = new ItemBody();
previewText.content = "New Task Created";

ChatMembersNotificationRecipient recipient = new ChatMembersNotificationRecipient();
recipient.chatId = "19:1c3af46e9e0f4a5293343c8813c47619@thread.v2";

LinkedList<KeyValuePair> templateParametersList = new LinkedList<KeyValuePair>();
KeyValuePair templateParameters = new KeyValuePair();
templateParameters.name = "taskId";
templateParameters.value = "Task 12322";

templateParametersList.add(templateParameters);

graphClient.chats("19:1c3af46e9e0f4a5293343c8813c47619@thread.v2")
	.sendActivityNotification(ChatSendActivityNotificationParameterSet
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