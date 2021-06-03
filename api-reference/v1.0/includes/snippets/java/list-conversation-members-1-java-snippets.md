---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMemberCollectionPage members = graphClient.me().chats("19:8b081ef6-4792-4def-b2c9-c363a1bf41d5_5031bb31-22c0-4f6f-9f73-91d34ab2b32d@unq.gbl.spaces").members()
	.buildRequest()
	.get();

```