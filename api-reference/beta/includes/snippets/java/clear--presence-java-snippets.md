---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String sessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87";

graphClient.users("fa8bf3dc-eca7-46b7-bad1-db199b62afc3").presence()
	.clearPresence(PresenceClearPresenceParameterSet
		.newBuilder()
		.withSessionId(sessionId)
		.build())
	.buildRequest()
	.post();

```