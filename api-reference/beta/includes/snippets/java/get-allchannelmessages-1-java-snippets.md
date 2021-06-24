---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChannelGetAllMessagesCollectionPage getAllMessages = graphClient.teams("fbe2bf47-16c8-47cf-b4a5-4b9b187c508b").channels()
	.getAllMessages()
	.buildRequest()
	.get();

```