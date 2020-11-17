---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMember conversationMember = graphClient.chats("{id}").members("{id}")
	.buildRequest()
	.get();

```