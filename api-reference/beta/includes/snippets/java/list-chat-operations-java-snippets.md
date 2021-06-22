---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamsAsyncOperationCollectionPage operations = graphClient.chats("19:c253a29b5f694b55a6baad8e83510af7@thread.v2").operations()
	.buildRequest()
	.get();

```