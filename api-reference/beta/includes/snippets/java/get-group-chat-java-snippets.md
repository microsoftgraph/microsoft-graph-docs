---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Chat chat = graphClient.chats("19:b8577894a63548969c5c92bb9c80c5e1@thread.v2")
	.buildRequest()
	.get();

```