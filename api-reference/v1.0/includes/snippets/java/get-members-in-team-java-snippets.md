---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConversationMemberCollectionPage members = graphClient.teams("ee0f5ae2-8bc6-4ae5-8466-7daeebbfa062").members()
	.buildRequest()
	.get();

```