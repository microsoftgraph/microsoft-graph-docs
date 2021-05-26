---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessageHostedContentCollectionPage hostedContents = graphClient.chats("19:2da4c29f6d7041eca70b638b43d45437@thread.v2").messages("1615971548136").hostedContents()
	.buildRequest()
	.get();

```