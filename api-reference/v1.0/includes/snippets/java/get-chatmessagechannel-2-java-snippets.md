---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = graphClient.teams("fbe2bf47-16c8-47cf-b4a5-4b9b187c508b").channels("19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2").messages("1614618259349")
	.buildRequest()
	.get();

```