---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String destinationId = "destinationId-value";

graphClient.me().mailFolders("{id}")
	.copy(MailFolderCopyParameterSet
		.newBuilder()
		.withDestinationId(destinationId)
		.build())
	.buildRequest()
	.post();

```