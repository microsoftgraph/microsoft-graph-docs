---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> messageIdsList = new LinkedList<String>();
messageIdsList.add("MC172851");
messageIdsList.add("MC167983");

graphClient.admin().serviceAnnouncement().messages()
	.favorite(ServiceUpdateMessageFavoriteParameterSet
		.newBuilder()
		.withMessageIds(messageIdsList)
		.build())
	.buildRequest()
	.post();

```