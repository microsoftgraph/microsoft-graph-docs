---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessageCollectionPage messages = graphClient.chats("19:2da4c29f6d7041eca70b638b43d45437@thread.v2").messages()
	.buildRequest()
	.top(2)
	.get();

```