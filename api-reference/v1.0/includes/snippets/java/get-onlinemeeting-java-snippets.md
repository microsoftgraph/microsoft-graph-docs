---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeetingCollectionPage onlineMeetings = graphClient.communications().onlineMeetings()
	.buildRequest()
	.filter("VideoTeleconferenceId eq '123456789'")
	.get();

```