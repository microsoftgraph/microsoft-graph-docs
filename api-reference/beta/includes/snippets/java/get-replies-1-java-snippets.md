---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessageCollectionPage replies = graphClient.chats("{id}").messages("{id}").replies()
	.buildRequest()
	.get();

```