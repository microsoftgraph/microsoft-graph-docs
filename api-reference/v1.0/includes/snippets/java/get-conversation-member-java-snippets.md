---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMember conversationMember = graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").members("141c574c-dd90-4131-b173-baf4bb0e894e")
	.buildRequest()
	.get();

```