---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"));
conversationMember.visibleHistoryStartDateTime = "2019-04-18T23:51:43.255Z";

graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").members()
	.buildRequest()
	.post(conversationMember);

```